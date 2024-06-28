`timescale 1ns/100ps
//`define SIM

module spi_reg_cfg
    (
        clk           ,
        rst_n         ,
        //spi
        spi_enb       ,
        spi_clk       ,
        spi_do        ,
        spi_di        ,
        //intf
        ad_rst_trg    ,
        dds_txen      ,
        dds_step      ,
        loop_en       ,
        //     init_done     ,
        VIO_ASYNC_OUT ,
        VIO_ASYNC_IN  ,
        source_rstn,
        init_done,
        //uart
        uart_do       ,
        uart_di
    );

    ////////////////////////////////////
    //Ports
    ////////////////////////////////////
    input           clk           ;
    input           rst_n         ;

    output source_rstn;

    //spi
    output          spi_enb       ;
    output          spi_clk       ;
    output          spi_di        ;
    input           spi_do        ;
    //intf
    output          ad_rst_trg    ;
    output          dds_txen      ;
    output [7:0]    dds_step      ;
    output          loop_en       ;
    output          init_done     ;
    input  [31:0]   VIO_ASYNC_OUT ;
    output [ 7:0]   VIO_ASYNC_IN  ;
    //output 			 init_done;
    //uart
    output          uart_di       ;
    input           uart_do       ;

    ////////////////////////////////////
    //Main Code
    ////////////////////////////////////

    //AD9361 initial configuration
    wire              spi_wr_end      ;
    wire              init_wr_req     ;
    wire [9:0]        init_wr_addr    ;
    wire [7:0]        init_wr_data    ;
    wire              init_done       ;

    ad9361_init u_init_cfg
                (
                    //input
                    .clk           (clk           ),
                    .rst_n         (rst_n         ),
                    .spi_wr_end    (spi_wr_end    ),

                    //output
                    .spi_wr_req    (init_wr_req   ),
                    .spi_wr_addr   (init_wr_addr  ),
                    .spi_wr_data   (init_wr_data  ),
                    .init_done     (init_done     )
                );

    wire              uart_rxen     ;
    wire [7:0]        uart_rx_data  ;

    reg  [2:0]        state         ;
    reg  [2:0]        state_next    ;

    wire spi_wr_trg   = uart_rxen && uart_rx_data==8'h5a && state==3'b000 && init_done;
    wire spi_rd_trg   = uart_rxen && uart_rx_data==8'h6b && state==3'b000 && init_done;
    wire ad_rst_trg   = uart_rxen && uart_rx_data==8'h7c && state==3'b000 && init_done;
    wire dds_txen_trg = uart_rxen && uart_rx_data==8'h8d && state==3'b000 && init_done;
    wire dds_txen_end = uart_rxen && uart_rx_data==8'h9e && state==3'b000 && init_done;
    wire loop_en_trg  = uart_rxen && uart_rx_data==8'haa && state==3'b000 && init_done;
    wire loop_en_end  = uart_rxen && uart_rx_data==8'hbb && state==3'b000 && init_done;
    //wire rssi_setup   = uart_rxen && uart_rx_data[7:4]==4'hc && state==3'b000 && init_done;

    //DDS TX and inner loop ctrl
    reg         dds_txen    ;
    reg         loop_en     ;
    reg [7:0]   dds_step    ;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            dds_txen <= #1 1'b0;
        else if(dds_txen_end)
            dds_txen <= #1 1'b0;
        else if(dds_txen_trg || init_done)
            dds_txen <= #1 1'b1;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            dds_step <= #1 8'd0;
        else if(uart_rxen && state==3'b101)
            dds_step <= #1 uart_rx_data;
        else if(init_done)
            //    dds_step <= #1 8'hc0;
            dds_step <= #1 8'd4;
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            loop_en <= #1 1'b0;
        else if(loop_en_end)
            loop_en <= #1 1'b0;
        else if(loop_en_trg)
            loop_en <= #1 1'b1;

    //AD9361 SPI Read/Write
    wire spi_rd_end;

    reg  [23:0]     u_data0;
    reg  [1:0]      u_cnt0 ;
    reg  [23:0]     u_data1;
    reg  [1:0]      u_cnt1 ;

    wire u_rx_vld0 = state==3'b001 && uart_rxen;
    wire u_rx_end0 = u_rx_vld0 && u_cnt0==2'd2;
    wire u_rx_vld1 = state==3'b011 && uart_rxen;
    wire u_rx_end1 = u_rx_vld1 && u_cnt1==2'd2;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            state <= 3'b000;
        else
            state <= #1 state_next;

    always @(*)
    case(state)
        3'b000 :
            state_next = spi_wr_trg ? 3'b001 : (spi_rd_trg ? 3'b011: (dds_txen_trg ? 3'b101:3'b000)); //idle
        3'b001 :
            state_next = u_rx_end0  ? 3'b010 : 3'b001; //uart rx for spi wr
        3'b010 :
            state_next = spi_wr_end ? 3'b000 : 3'b010; //spi writing
        3'b011 :
            state_next = u_rx_end1  ? 3'b100 : 3'b011; //uart rx for spi rd
        3'b100 :
            state_next = spi_rd_end ? 3'b000 : 3'b100; //spi reading
        3'b101 :
            state_next = uart_rxen  ? 3'b000 : 3'b101; //setup dds_step
        default:
            state_next = 3'b000;
    endcase

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            u_data0 <= 24'b0;
        else if(!(state==3'b001 || state==3'b010))
            u_data0 <= 24'b0;
        else if(u_rx_vld0)
            u_data0 <= #1 {u_data0[15:0], uart_rx_data};

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            u_cnt0 <= 2'b0;
        else if(u_rx_end0)
            u_cnt0 <= 2'b0;
        else if(u_rx_vld0)
            u_cnt0 <= u_cnt0 + 2'b1;

    reg   u_rx_end0_d1;
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            u_rx_end0_d1 <= #1 1'b0;
        else
            u_rx_end0_d1 <= #1 u_rx_end0;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            u_data1 <= 24'b0;
        else if(!(state==3'b011 || state==3'b100))
            u_data1 <= 24'b0;
        else if(u_rx_vld1)
            u_data1 <= #1 {u_data1[15:0], uart_rx_data};

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            u_cnt1 <= 2'b0;
        else if(u_rx_end1)
            u_cnt1 <= 2'b0;
        else if(u_rx_vld1)
            u_cnt1 <= u_cnt1 + 2'b1;

    reg   u_rx_end1_d1;
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            u_rx_end1_d1 <= #1 1'b0;
        else
            u_rx_end1_d1 <= #1 u_rx_end1;

    //VIO control
    wire [9:0]  vio_wr_addr = VIO_ASYNC_OUT[9:0];
    wire [7:0]  vio_wr_data = VIO_ASYNC_OUT[17:10];
    wire [9:0]  vio_rd_addr = VIO_ASYNC_OUT[27:18];
    wire        vio_wr_signal = VIO_ASYNC_OUT[28];
    wire        vio_rd_signal = VIO_ASYNC_OUT[29];
    assign      source_rstn = 1'b1;

    reg  [1:0]  vio_wr_dl      ;
    reg  [1:0]  vio_rd_dl      ;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            vio_wr_dl <= #1 2'b00;
        else
            vio_wr_dl <= #1 {vio_wr_dl[0], vio_wr_signal};

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            vio_rd_dl <= #1 2'b00;
        else
            vio_rd_dl <= #1 {vio_rd_dl[0], vio_rd_signal};

    wire  vio_wr_req = vio_wr_dl[0] ^ vio_wr_dl[1];
    wire  vio_rd_req = vio_rd_dl[0] ^ vio_rd_dl[1];

    wire [9:0] spi_wr_addr = init_wr_req ? init_wr_addr : (u_rx_end0_d1 ? u_data0[17:8] : vio_wr_addr);
    wire [7:0] spi_wr_data = init_wr_req ? init_wr_data : (u_rx_end0_d1 ? u_data0[7:0]  : vio_wr_data);
    wire       spi_wr_req  = init_wr_req ||                u_rx_end0_d1                || vio_wr_req;
    wire [9:0] spi_rd_addr = u_rx_end1_d1 ? u_data1[17:8] : vio_rd_addr;
    wire       spi_rd_req  = u_rx_end1_d1 || vio_rd_req;
    wire [7:0] spi_rd_data;

    assign VIO_ASYNC_IN = spi_rd_data;

    wire       uart_txen    = spi_rd_end ;
    wire [7:0] uart_tx_data = spi_rd_data;

    //uart u_uart
    //            (
    //              .clk           (clk            ),
    //              .rst_n         (rst_n          ),
    //              .parity_en     (1'b0           ),
    //              //.ratio         (14'd208        ), //24M, 115200
    //            `ifdef SIM
    //              .ratio         (14'd3          ), //50MHz, 115200,r=433
    //            `else
    //              .ratio         (14'd433        ), //50MHz, 115200,r=433
    //            `endif
    //              .rx            (uart_do        ),
    //              .tx_en         (uart_txen      ),
    //              .tx_data       (uart_tx_data   ),
    //
    //              .rx_en         (uart_rxen      ),
    //              .parity_fail   (               ),
    //              .rx_data       (uart_rx_data   ),
    //              .tx            (uart_di        ),
    //              .tx_rdy        (uart_tx_rdy    )
    //            );

    spi u_spi
        (
            /////////////input////////////
            .clk           (clk            ),
            .rst_n         (rst_n          ),
            .wr_req        (spi_wr_req     ),
            .wr_addr       (spi_wr_addr    ),
            .wr_data       (spi_wr_data    ),
            .rd_req        (spi_rd_req     ),
            .rd_addr       (spi_rd_addr    ),

            .spi_do        (spi_do         ),

            /////////////output////////////
            .wr_end        (spi_wr_end     ),
            .rd_end        (spi_rd_end     ),
            .rd_data       (spi_rd_data    ),

            .spi_clk       (spi_clk        ),
            .spi_enb       (spi_enb        ),
            .spi_di        (spi_di         )
        );

endmodule
