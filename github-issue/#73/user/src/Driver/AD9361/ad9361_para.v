`timescale 1ns / 1ps
module ad9361_para(
        input clk_100m, rst_n, en_i,
        input busy, //当前AD9361读写状态忙
        input [7:0] VIO_ASYNC_IN,
        output reg rd_flag,
        output reg [9:0]  VIO_ASYNC_OUT,
        output uart_ais
    );
    ////////刷新时间定为1ms///////////////
    reg flag_100ms;
    reg [15:0] cnt_100ms;
    always @(posedge clk_100m or negedge rst_n) begin
        if(!rst_n)
            cnt_100ms <= 16'h1;
        else if(cnt_100ms == 16'd50000)
            cnt_100ms <= 16'h1;
        else
            cnt_100ms <= cnt_100ms +16'h1;
    end
    always @(posedge clk_100m or negedge rst_n) begin
        if(!rst_n)
            flag_100ms <= 1'b0;
        else if(cnt_100ms == 16'd49999)
            flag_100ms <= 1'b1;
        else
            flag_100ms <= 1'b0;
    end


    reg bps_clk_t; //改变读地址脉冲
    reg bps_clk_r; //刷新读操作脉冲
    always @(posedge clk_100m or negedge rst_n) begin
        if(!rst_n)
            bps_clk_t <= 1'b0;
        else if(cnt_100ms == 16'd8000 && en_i)
            bps_clk_t <= 1'b1;
        else
            bps_clk_t <= 1'b0;
    end
    //读fifo脉冲
    always @(posedge clk_100m or negedge rst_n) begin
        if(!rst_n)
            bps_clk_r <= 1'b0;
        else if(cnt_100ms == 16'd30000 && en_i)
            bps_clk_r <= 1'b1;
        //	 else if(cnt_100ms == 16'd16000)
        //		  bps_clk_r <= 1'b1;
        else
            bps_clk_r <= 1'b0;
    end
    always @(posedge clk_100m or negedge rst_n) begin
        if(!rst_n)
            VIO_ASYNC_OUT <= 10'h005;
        else if(VIO_ASYNC_OUT == 10'h005 && bps_clk_t)
            VIO_ASYNC_OUT <= 10'h231;
        else if(VIO_ASYNC_OUT == 10'h235 && bps_clk_t)
            VIO_ASYNC_OUT <= 10'h005;
        else if(bps_clk_t)
            VIO_ASYNC_OUT <= VIO_ASYNC_OUT + 1;
    end
    always @(posedge clk_100m or negedge rst_n) begin
        if(!rst_n)
            rd_flag <= 1'b0;
        else if( bps_clk_r && busy == 0)  //当前状态不忙
            rd_flag <= ~rd_flag;
        else
            rd_flag <= rd_flag;
    end
    //用来存储8个寄存器中数据的值
    reg [7:0] DA1,DA2,DA3,DA4,DA5,DA6;
    always @(posedge clk_100m or negedge rst_n) begin
        if(!rst_n)
            DA1 <= 0;
        else if(VIO_ASYNC_OUT == 10'h231 && bps_clk_t)
            DA1 <= VIO_ASYNC_IN;
    end
    always @(posedge clk_100m or negedge rst_n) begin
        if(!rst_n)
            DA2 <= 0;
        else if(VIO_ASYNC_OUT == 10'h232 && bps_clk_t)
            DA2 <= VIO_ASYNC_IN;
    end
    always @(posedge clk_100m or negedge rst_n) begin
        if(!rst_n)
            DA3 <= 0;
        else if(VIO_ASYNC_OUT == 10'h233 && bps_clk_t)
            DA3 <= VIO_ASYNC_IN;
    end
    always @(posedge clk_100m or negedge rst_n) begin
        if(!rst_n)
            DA4 <= 0;
        else if(VIO_ASYNC_OUT == 10'h234 && bps_clk_t)
            DA4 <= VIO_ASYNC_IN;
    end
    always @(posedge clk_100m or negedge rst_n) begin
        if(!rst_n)
            DA5 <= 0;
        else if(VIO_ASYNC_OUT == 10'h235 && bps_clk_t)
            DA5 <= VIO_ASYNC_IN;
    end
    always @(posedge clk_100m or negedge rst_n) begin
        if(!rst_n)
            DA6 <= 0;
        else if(VIO_ASYNC_OUT == 10'h005 && bps_clk_t)
            DA6 <= VIO_ASYNC_IN;
    end
    ////////////////产生读寄存器的操作////////////////////////
    //////////////////////////////////////////////
    //此处添加一个16个状态的状态机
    ////////////////////////////////////////////
    reg [4:0] cur_state,next_state;
    //状态机定义:
    parameter IDLE 		= 0;	//空闲状态
    parameter Send1 		= 1;	//
    parameter Send2 		= 2;
    parameter Send3		= 3;
    parameter Send4		= 4;

    parameter Send5		= 5;
    parameter Send6 		= 6;	//
    parameter Send7 		= 7;
    parameter Send8		= 8;

    parameter Send9		= 9;
    parameter Send10		= 10;
    parameter Send11 		= 11;	//
    parameter Send12 		= 12;

    parameter Send13		= 13;
    parameter Send14		= 14;
    parameter Send15		= 15;
    parameter Send16 		= 16;	//

    parameter Send17		= 17;
    parameter Send18		= 18;
    parameter Send19 		= 19;	//
    parameter Send20 		= 20;

    parameter Send21		= 21;
    parameter Send22		= 22;
    parameter Send23		= 23;
    parameter Send24 		= 24;	//
    //状态机时序更新
    always @(posedge clk_100m or negedge rst_n) begin
        if(!rst_n)
            cur_state <= IDLE;
        else
            cur_state <= next_state;
    end

    //下一状态计算
    always @(*) begin
        next_state <= cur_state;
        case (cur_state)
            IDLE:
                if(flag_100ms == 1'b1)
                    next_state <= Send1;
            Send1:
                if(flag_100ms == 1'b1)
                    next_state <= Send2;
            Send2:
                if(flag_100ms == 1'b1)
                    next_state <= Send3;
            Send3:
                if(flag_100ms == 1'b1)
                    next_state <= Send4;
            Send4:
                if(flag_100ms == 1'b1)
                    next_state <= Send5;
            Send5:
                if(flag_100ms == 1'b1)
                    next_state <= Send6;
            Send6:
                if(flag_100ms == 1'b1)
                    next_state <= Send7;
            Send7:
                if(flag_100ms == 1'b1)
                    next_state <= Send8;
            Send8:
                if(flag_100ms == 1'b1)
                    next_state <= Send9;
            Send9:
                if(flag_100ms == 1'b1)
                    next_state <= Send10;
            Send10:
                if(flag_100ms == 1'b1)
                    next_state <= Send11;
            Send11:
                if(flag_100ms == 1'b1)
                    next_state <= Send12;
            Send12:
                if(flag_100ms == 1'b1)
                    next_state <= Send13;
            Send13:
                if(flag_100ms == 1'b1)
                    next_state <= Send14;
            Send14:
                if(flag_100ms == 1'b1)
                    next_state <= Send15;
            Send15:
                if(flag_100ms == 1'b1)
                    next_state <= Send16;
            Send16:
                if(flag_100ms == 1'b1)
                    next_state <= Send17;
            Send17:
                if(flag_100ms == 1'b1)
                    next_state <= Send18;
            Send18:
                if(flag_100ms == 1'b1)
                    next_state <= Send19;
            Send19:
                if(flag_100ms == 1'b1)
                    next_state <= Send20;
            Send20:
                if(flag_100ms == 1'b1)
                    next_state <= Send21;
            Send21:
                if(flag_100ms == 1'b1)
                    next_state <= Send22;
            Send22:
                if(flag_100ms == 1'b1)
                    next_state <= Send23;
            Send23:
                if(flag_100ms == 1'b1)
                    next_state <= Send24;
            Send24:
                if(flag_100ms == 1'b1)
                    next_state <= Send1;
            default:
                next_state <= IDLE;
        endcase
    end

    reg [7:0] temp_data;	//作为暂存数据的中间变量
    reg [7:0] data_uart;
    reg write_o;
    always @(posedge clk_100m or negedge rst_n) begin
        if(!rst_n)
            temp_data <= 8'b0;
        else
        case (cur_state)
            Send1:
                temp_data <= 8'hEB;
            Send2:
                temp_data <= 8'h94;
            Send3:
                temp_data <= 0;
            Send4:
                temp_data <= DA1;
            /////////////////////////////////////////////
            Send5:
                temp_data <= 8'hEB;
            Send6:
                temp_data <= 8'h95;
            Send7:
                temp_data <= 0;
            Send8:
                temp_data <= DA2;
            /////////////////////////////////////////////
            Send9:
                temp_data <= 8'hEB;
            Send10:
                temp_data <= 8'h96;
            Send11:
                temp_data <= 0;
            Send12:
                temp_data <= DA3;
            ////////////////////////////////////////////
            Send13:
                temp_data <= 8'hEB;
            Send14:
                temp_data <= 8'h97;
            Send15:
                temp_data <= 0;
            Send16:
                temp_data <= DA4;
            /////////////////////////////////////////////
            Send17:
                temp_data <= 8'hEB;
            Send18:
                temp_data <= 8'h98;
            Send19:
                temp_data <= 0;
            Send20:
                temp_data <= DA5;       //64
            ////////////////////////////////////////////
            Send21:
                temp_data <= 8'hEB;
            Send22:
                temp_data <= 8'h99;
            Send23:
                temp_data <= 0;
            Send24:
                temp_data <= DA6;    //55
            /////////////////////////////////////////////
            default:
                temp_data <= IDLE;
        endcase
    end
    ////***************将数据传给串口******************//
    always @(posedge clk_100m or negedge rst_n) begin
        if(!rst_n) begin
            write_o <= 1'b0;
            data_uart <= 8'h0;
        end
        else if( flag_100ms == 1'b1 ) begin    //上升沿推数 下降沿取数
            write_o <= 1'b1;
            data_uart <= temp_data;
        end
        else begin
            write_o <= 1'b0;
            data_uart <= data_uart;
        end
    end
    ///////////////和AIS遥测使用相同的串口/////////////////
    uart u_uart_ad(
             .clk(clk_100m),       //主时钟100M
             .rst(rst_n),
             .rx(),   //

             .rxrdy(),       ///
             .rxdata(),   //

             .tx(uart_ais),   //
             .txrdy(),  //ryd_fm
             .txdata(data_uart),   //   base_fm
             .write_i(write_o)   //ryd_fm
         );

    //产生320K的分频
    reg clk_16k;
    reg [15:0] cnt_16;
    wire flag_16k;


    always @(posedge clk_100m or negedge rst_n) begin
        if(!rst_n) begin
            cnt_16 <= 16'b1;
            clk_16k <= 1;
        end
        else if(cnt_16 == 5000) begin    ///此处将其变为   16K
            cnt_16 <= 16'b1;
            clk_16k <= ~clk_16k;
        end
        else
            cnt_16 <= 1 + cnt_16;
    end

endmodule
