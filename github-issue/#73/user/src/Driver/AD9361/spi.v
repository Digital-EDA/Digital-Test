`timescale 1ns/100ps
module spi (
        /////////////input////////////
        clk           ,
        rst_n         ,
        wr_req        ,
        wr_addr       ,
        wr_data       ,
        rd_req        ,
        rd_addr       ,

        //physical in port
        spi_do        ,

        /////////////output////////////
        wr_end        ,
        rd_end        ,
        rd_data       ,

        //physical out port
        spi_clk       ,
        spi_enb       ,
        spi_di
    );

    ////////////////////////////////////////////
    //Ports
    ////////////////////////////////////////////
    input             clk           ;
    input             rst_n         ;
    input             wr_req        ;
    input  [9:0]      wr_addr       ;
    input  [7:0]      wr_data       ;
    input             rd_req        ;
    input  [9:0]      rd_addr       ;
    input             spi_do        ;

    output            wr_end        ;
    output            rd_end        ;
    output [7:0]      rd_data       ;
    output            spi_clk       ;
    output            spi_enb       ;
    output            spi_di        ;

    ////////////////////////////////////
    //Main Code
    ////////////////////////////////////

    //divide clk
    reg [4:0]         div_cnt   ;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            div_cnt <= #1 5'd0;
        else
            div_cnt <= #1 div_cnt + 5'd1;

    wire div_hit = &div_cnt[4:0];
    wire div_clk = !div_cnt[4];
    wire [4:0] div_half = 5'd16;

    //spi write control
    reg               wr_state  ;
    reg [4:0]         wr_cnt    ;
    reg               wr_en     ;
    reg [23:0]        wr_shift  ;

    wire wr_end = div_hit && wr_state && wr_cnt==5'd25;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            wr_state <= #1 1'b0;
        else if(wr_req)
            wr_state <= #1 1'b1;
        else if(wr_end)
            wr_state <= #1 1'b0;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            wr_cnt <= #1 5'd0;
        else if(wr_end)
            wr_cnt <= #1 5'd0;
        else if(wr_state)
            wr_cnt <= #1 wr_cnt + div_hit;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            wr_en <= #1 1'b0;
        else if(wr_state && div_hit && wr_cnt==5'd0)
            wr_en <= #1 1'b1;
        else if(wr_state && div_hit && wr_cnt==5'd24)
            wr_en <= #1 1'b0;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            wr_shift <=#1 24'd0;
        else if(wr_req)
            wr_shift <=#1 {6'b100000,wr_addr,wr_data};
        else if(wr_en && div_hit)
            wr_shift <=#1 {wr_shift[22:0],1'b0};

    //spi read control
    reg               rd_state  ;
    reg [4:0]         rd_cnt    ;
    reg               rd_en     ;
    reg [15:0]        rd_shift  ;
    reg [7:0]         rd_data   ;

    wire rd_end = div_hit && rd_state && rd_cnt==5'd25;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            rd_state <= #1 1'b0;
        else if(rd_req)
            rd_state <= #1 1'b1;
        else if(rd_end)
            rd_state <= #1 1'b0;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            rd_cnt <= #1 5'd0;
        else if(rd_end)
            rd_cnt <= #1 5'd0;
        else if(rd_state)
            rd_cnt <= #1 rd_cnt + div_hit;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            rd_en <= #1 1'b0;
        else if(rd_state && div_hit && rd_cnt==5'd0)
            rd_en <= #1 1'b1;
        else if(rd_state && div_hit && rd_cnt==5'd24)
            rd_en <= #1 1'b0;

    wire rd_cfg     = rd_en && rd_cnt<=5'd16;
    wire rd_out_vld = rd_en && rd_cnt>=5'd17;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            rd_shift <=#1 16'd0;
        else if(rd_req)
            rd_shift <=#1 {6'b000000,rd_addr};
        else if(rd_cfg && div_hit)
            rd_shift <=#1 {rd_shift[14:0],1'b0};

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            rd_data <=#1 8'd0;
        else if(rd_out_vld && div_cnt==div_half)
            rd_data <= #1 {rd_data[6:0],spi_do};

    wire spi_clk_wire = div_clk && (wr_en || rd_en);
    wire spi_enb_wire = !(wr_state || rd_state);
    wire spi_di_wire  = (wr_en && wr_shift[23]) || (rd_cfg && rd_shift[15]);

    reg spi_clk;
    reg spi_enb;
    reg spi_di ;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            spi_clk <= #1 1'b0;
        else
            spi_clk <= #1 spi_clk_wire;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            spi_enb <= #1 1'b0;
        else
            spi_enb <= #1 spi_enb_wire;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            spi_di <= #1 1'b0;
        else
            spi_di <= #1 spi_di_wire;

endmodule
