`timescale 1ns/100ps
module ad9361_init (
        input            clk,
        input            rst_n,
        input            spi_wr_end,

        //ctrl
        output reg       spi_wr_req,
        output reg [9:0] spi_wr_addr,
        output reg [7:0] spi_wr_data,
        output reg       init_done
    );
    ////////////////////////////////////
    //Main Code
    ////////////////////////////////////
    reg [1:0]     state       ;
    reg [1:0]     state_next  ;
    reg           wait_vld    ;
    reg [23:0]    wait_cnt    ;

    wire [19:0]   rom_data    ;

    wire spi_wr_trg = state==2'b00 && rom_data[19:18]==2'b00;
    wire wait_trg   = state==2'b00 && rom_data[19:18]==2'b01;
    wire init_end   = state==2'b00 && rom_data[19:18]==2'b10;

    wire wait_end = wait_vld && wait_cnt==24'd10000000;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            wait_vld <=  1'b0;
        else if(wait_end)
            wait_vld <=  1'b0;
        else if(wait_trg)
            wait_vld <=  1'b1;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            wait_cnt <=  24'd0;
        else if(!wait_vld)
            wait_cnt <=  24'd0;
        else
            wait_cnt <=  wait_cnt + 1'b1;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            state <=  2'd0;
        else
            state <=  state_next;

    always @(*) begin        
        case(state)
            2'b00 :
                state_next = init_end   ? 2'b11 : (spi_wr_trg ? 2'b01 : (wait_trg ? 2'b10 : 2'b00));
            2'b01 :
                state_next = spi_wr_end ? 2'b00 : 2'b01;
            2'b10 :
                state_next = wait_end   ? 2'b00 : 2'b10;
            2'b11 :
                state_next = 2'b11;
        endcase
    end

    reg [11:0]    addr        ;
    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            addr <=  12'd0;
        else if(spi_wr_trg || wait_trg)
            addr <=  addr + 1'b1;

    ad9361_cfg_rom u_rom(
        .clk      (clk        ),
        .addr     (addr       ),
        .data     (rom_data   )
    );


    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            spi_wr_req <= 1'b0;
        else
            spi_wr_req <= spi_wr_trg;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            spi_wr_addr <= 10'b0;
        else if(spi_wr_trg)
            spi_wr_addr <= rom_data[17:8];

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            spi_wr_data <= 8'b0;
        else if(spi_wr_trg)
            spi_wr_data <= rom_data[7:0];

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            init_done <= 1'b0;
        else if(init_end)
            init_done <= 1'b1;

endmodule
