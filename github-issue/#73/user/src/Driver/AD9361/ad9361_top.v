`timescale 1ns/100ps
module ad9361_top
    (
        ad_rstn       ,
        ad_enable     ,
        ad_txnrx      ,

        //adc rx
        rx_clk_in_p         ,
        rx_clk_in_n         ,
        rx_frame_in_p       ,
        rx_frame_in_n       ,
        rx_data_in_p        ,
        rx_data_in_n        ,

        //dac tx
        tx_clk_out_p        ,
        tx_clk_out_n        ,
        tx_frame_out_p      ,
        tx_frame_out_n      ,
        tx_data_out_p       ,
        tx_data_out_n       ,

        //spi
        spi_clk       ,
        spi_enb       ,
        spi_do        ,
        spi_di        ,

        //             led0          ,
        ///////////////射频控制引脚//////////////////
        tx2_con1         ,
        tx2_con2         ,
        tx2_con3         ,
        tx2_con4         ,
        tx2_con5         ,
        tx2_con6         ,

        tx1_con11        ,
        tx1_con12        ,
        tx1_con13        ,
        tx1_con14        ,
        tx1_con15        ,
        tx1_con16        ,

        rx2_con7         ,
        rx2_con8         ,
        rx2_con9         ,
        rx2_con10        ,

        rx1_con17         ,
        rx1_con18         ,
        rx1_con19         ,
        rx1_con20         ,


        //added by wangjzh
        clk_in_l       ,
        clk_25m_in_l,
        clk_100m_in_l,
        clk_200m_in_l,
        lock_in_l      ,
        VIO_ASYNC_OUT_L,
        VIO_SEL,
        VIO_ASYNC_OUT_OBSERVE,
        VIO_ASYNC_IN_L,

        //9月12增加管教
        clk              ,      //change clk to clk1 by ws
        clk_100m         ,
        l_clk           ,

        uart_fre_in,
        fm_data,
        flag_16k,
        base_fm,
        rdy_fm,
        //6月4号新增管脚
        fsk_data_out,
        fsk_data_in,
        fsk_data_in_tvalid,
        fsk_data_in_tready,
        fsk_data_in_tlast,
        fsk_data_out_tvalid,
        fsk_data_out_tready,
        fsk_data_out_tlast,
        //6月28日新增管脚
        ori_data_out,
        ori_data_tvalid,
        ori_data_tready,
        ori_data_tlast,
        order_in,
        order_out,
        order_in_tvalid,
        order_in_tready,
        order_in_tlast,
        order_out_tvalid,
        order_out_tready,
        order_out_tlast,
        //8月8日新增管脚
        ddr_cnt,
        ddr_base_cnt,
        ddr_data_cnt,
        ddr_reset,
        manu_reset,
        //8月26新增功能码寄存器
        modetype_reg,
        datatype_reg,
        codetype_reg,
        transtype_reg,
        //tx2 传入寄存器配置；
        modetype_in,
        datatype_in,
        codetype_in,
        transtype_in,







        //控制能否存储基带数据
        ori_en
    );

    ////////////////////////////////////
    //Ports
    ////////////////////////////////////



    //ctrl
    //input [1:0]     VIO_Czr_IN;
    output          ad_rstn       ;
    output          ad_enable     ;
    output          ad_txnrx      ;


    //rx path
    input           rx_clk_in_p      ;
    input           rx_clk_in_n      ;
    input           rx_frame_in_p    ;
    input           rx_frame_in_n    ;
    input  [5:0]    rx_data_in_p     ;
    input  [5:0]    rx_data_in_n     ;

    //rx path
    output          tx_clk_out_p      ;
    output          tx_clk_out_n      ;
    output          tx_frame_out_p    ;
    output          tx_frame_out_n    ;
    output [5:0]    tx_data_out_p     ;
    output [5:0]    tx_data_out_n     ;

    //spi
    output          spi_clk       ;
    output          spi_enb       ;
    output          spi_di        ;
    input           spi_do        ;

    ////////////////射频组控制////////////////////////
    output                              tx2_con1         ;
    output                              tx2_con2         ;
    output                              tx2_con3         ;
    output                              tx2_con4         ;
    output                              tx2_con5         ;
    output                              tx2_con6         ;

    output                              rx2_con7         ;
    output                              rx2_con8         ;
    output                              rx2_con9         ;
    output                              rx2_con10        ;

    output                              tx1_con11        ;
    output                              tx1_con12        ;
    output                              tx1_con13        ;
    output                              tx1_con14        ;
    output                              tx1_con15        ;
    output                              tx1_con16        ;

    output                              rx1_con17         ;
    output                              rx1_con18         ;
    output                              rx1_con19         ;
    output                              rx1_con20        ;
    //9月12日增加
    output                               clk              ;
    output                               clk_100m         ;
    output                               l_clk  ;

    input                                uart_fre_in;
    input [15:0]                         fm_data;
    output                               flag_16k;
    output [15:0]                        base_fm;
    output                               rdy_fm;


    input            clk_in_l       ;
    input clk_25m_in_l;
    input clk_100m_in_l;
    input clk_200m_in_l;
    input            lock_in_l      ;
    input[31:0] VIO_ASYNC_OUT_L;
    input VIO_SEL;
    output[31:0] VIO_ASYNC_OUT_OBSERVE;
    output[7:0] VIO_ASYNC_IN_L;
    //22 6月4日添加
    output      [7:0]               fsk_data_out;
    input       [7:0]               fsk_data_in;
    input fsk_data_out_tready;
    output fsk_data_out_tvalid;
    output fsk_data_out_tlast;
    output fsk_data_in_tready;
    input fsk_data_in_tvalid;
    input fsk_data_in_tlast;
    //6月28新增加
    input ori_data_tready;
    output ori_data_tvalid;
    output ori_data_tlast;
    output  [63:0] ori_data_out;
    input        [7:0]   order_in;
    output       [7:0]   order_out;
    input order_in_tvalid;
    output order_in_tready;
    input order_in_tlast;
    input order_out_tready;
    output order_out_tvalid;
    output order_out_tlast;

    //8月8日新增管脚
    output [31:0] ddr_cnt;
    output [31:0] ddr_base_cnt;
    output [31:0] ddr_data_cnt;
    output ddr_reset;  //0复位，1工作
    input [31:0] manu_reset;// 1复位，0工作
    //8月26新增功能码寄存器
    output [31:0] modetype_reg;
    output [31:0] datatype_reg;
    output [31:0] codetype_reg;
    output [31:0] transtype_reg;
    //
    input [31:0] modetype_in;
    input [31:0] datatype_in;
    input [31:0] codetype_in;
    input [31:0] transtype_in;

    input [31:0] ori_en;








    ///////////////////////////
    //rf code
    //--------------------------------------------------------------------------


    assign tx2_con1 = 1'b0;
    assign tx2_con2 = 1'b0;
    assign tx2_con3 = 1'b0;

    assign tx2_con4 = 1'b1;
    assign tx2_con5 = 1'b1;
    assign tx2_con6 = 1'b1;

    assign rx2_con7 = 1'b1;
    assign rx2_con8 = 1'b0;

    assign rx2_con9 = 1'b0;
    assign rx2_con10 = 1'b1;

    assign tx1_con11 = 1'b1;
    assign tx1_con12 = 1'b1;
    assign tx1_con13 = 1'b1;

    assign tx1_con14 = 1'b0;
    assign tx1_con15 = 1'b0;
    assign tx1_con16 = 1'b0;

    assign rx1_con17 = 1'b0;
    assign rx1_con18 = 1'b1;

    assign rx1_con19 = 1'b1;
    assign rx1_con20 = 1'b0;


    ////////////////////////////////////
    //Main Code
    ////////////////////////////////////




    wire            clk       ;
    wire clk_25m;
    wire clk_100m;
    wire            lock      ;


    assign clk=clk_in_l;
    assign clk_25m=clk_25m_in_l;
    assign clk_100m=clk_100m_in_l;
    assign lock=lock_in_l;


    reg [9:0]  cnt;
    reg        soft_rst_n;
    wire source_rstn;
    wire rst_n;

    assign rst_n = soft_rst_n & source_rstn;
    always @(posedge clk or negedge lock)
        if(!lock)
            cnt <= #1 10'd0;
        else
            cnt <= #1 cnt + 1'b1;

    always @(posedge clk or negedge lock)
        if(!lock)
            soft_rst_n <= #1 1'b0;
        else if(cnt==10'd1022)
            soft_rst_n <= #1 1'b1;

    wire        ad_rst_trg  ;
    reg         ad_rst_vld  ;
    reg  [9:0]  ad_rst_cnt  ;

    wire ad_rst_end = ad_rst_vld && ad_rst_cnt==10'd1023;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            ad_rst_vld <= #1 1'b0;
        else if(ad_rst_end)
            ad_rst_vld <= #1 1'b0;
        else if(ad_rst_trg)
            ad_rst_vld <= #1 1'b1;

    always @(posedge clk or negedge rst_n)
        if(!rst_n)
            ad_rst_cnt <= #1 10'b0;
        else if(ad_rst_end)
            ad_rst_cnt <= #1 10'b0;
        else if(ad_rst_vld)
            ad_rst_cnt <= #1 ad_rst_cnt + 10'b1;

    wire ad_rstn   = (!ad_rst_vld) & rst_n;


    assign ad_enable = 1'b0;                //
    assign ad_txnrx  = 1'b0;

    wire [1:0] VIO_Czr_OUT={ad_enable,ad_txnrx};   //


    wire        dds_txen;
    wire [7:0]  dds_step;
    wire        loop_en ;

    wire  [31:0]  VIO_ASYNC_OUT;
    wire  [ 7:0]  VIO_ASYNC_IN;
    wire init_done;
    wire [31:0] VIO_ASYNC_OUT3;
    wire [1:0] VIO_Czr_IN;
    //assign VIO_ASYNC_OUT=VIO_ASYNC_OUT_L;
    assign VIO_ASYNC_OUT =(VIO_SEL==1'b1)?VIO_ASYNC_OUT_L:VIO_ASYNC_OUT3 ;
    assign VIO_ASYNC_IN_L=VIO_ASYNC_IN;
    assign VIO_ASYNC_OUT_OBSERVE=VIO_ASYNC_OUT;

    spi_reg_cfg u_reg_cfg (
        .clk            (clk            ),
        .rst_n          (rst_n & soft_rst_n         ),

        //spi
        .spi_enb        (spi_enb        ),
        .spi_clk        (spi_clk        ),
        .spi_do         (spi_do         ),
        .spi_di         (spi_di         ),

        //uart
        .ad_rst_trg     (ad_rst_trg     ),
        .dds_txen       (dds_txen       ),
        .dds_step       (dds_step       ),
        .loop_en        (loop_en        ),
        //              .init_done      (led0           ),
        .init_done      ( init_done),
        .VIO_ASYNC_OUT  (VIO_ASYNC_OUT  ),
        .VIO_ASYNC_IN   (VIO_ASYNC_IN    ),
        .uart_do        (       ),
        .source_rstn(source_rstn),
        .uart_di        (        )
    );


    wire          l_clk  ;
    reg [1:0]     div_cnt;

    always @(posedge l_clk or negedge rst_n)
        if(!rst_n)
            div_cnt <= #1 2'b0;
        else
            div_cnt <= #1 div_cnt + 1'b1;

    wire flag = div_cnt[0];

    reg [11:0]    dds_addr  ;

    always @(posedge l_clk or negedge rst_n)
        if(!rst_n)
            dds_addr <= #1 12'b0;
        else if(flag && dds_txen)
            dds_addr <= #1 dds_addr + dds_step;

    (* MARK_DEBUG="true" *)wire  [11:0]  cosine;
    (* MARK_DEBUG="true" *)wire  [11:0]  sine;


    wire            adc_valid   ;
    wire [47:0]     adc_data    ;

    reg         dac_valid ;
    reg [47:0]  dac_data  ;

    always @(posedge l_clk or negedge rst_n)
        if(!rst_n)
            dac_valid <= #1 1'h0;
        else if(loop_en)
            dac_valid <= #1 adc_valid;
        else if(dds_txen)
            dac_valid <= #1 flag;

    always @(posedge l_clk)	begin
        dac_data <= {12'd0, 12'd0, sine, cosine};
    end

    ad9361_dev u_trx(
        // physical interface (receive)
        .rx_clk_in_p          (rx_clk_in_p          ),
        .rx_clk_in_n          (rx_clk_in_n          ),
        .rx_frame_in_p        (rx_frame_in_p        ),
        .rx_frame_in_n        (rx_frame_in_n        ),
        .rx_data_in_p         (rx_data_in_p         ),
        .rx_data_in_n         (rx_data_in_n         ),

        // physical interface (transmit)
        .tx_clk_out_p         (tx_clk_out_p         ),
        .tx_clk_out_n         (tx_clk_out_n         ),
        .tx_frame_out_p       (tx_frame_out_p       ),
        .tx_frame_out_n       (tx_frame_out_n       ),
        .tx_data_out_p        (tx_data_out_p        ),
        .tx_data_out_n        (tx_data_out_n        ),

        // clock (common to both receive and transmit)
        .rst_n                (rst_n                ),
        .clk                  (l_clk                ),
        .l_clk                (l_clk                ),

        // receive data path interface
        .adc_valid            (adc_valid            ),
        .adc_data             (adc_data             ),
        .adc_status           (adc_status           ),
        .adc_r1_mode          (1'b1                 ),

        // transmit data path interface
        .dac_valid            (dac_valid            ),
        .dac_data             (dac_data             ),
        .dac_r1_mode          (1'b1                 ),

        // delay interface
        .up_clk               (l_clk                ),
        .up_adc_dld           (7'h0                 ),
        .up_adc_dwdata        (35'h0                ),
        .up_adc_drdata        (                     ),
        .up_dac_dld           (8'h0                 ),
        .up_dac_dwdata        (40'h0                ),
        .up_dac_drdata        (                     ),
        //.delay_clk            (   clk_100m_in_l             ),//1'h0
        .delay_clk            (   clk_200m_in_l             ),//1'h0
        .delay_rst            (1'h0                 ),
        .delay_locked         (                     )
    );


    //添加功能切换 [1:0]----00:无--01:Fsk---10:Qpsk---11:Bpsk;
    //测试的过程中利用虚拟开关进行测试 通过虚拟开关的组合逻辑进行控制

    reg ddr_reset_temp;
    always@(posedge l_clk) begin
        if(~rst_n) begin
            ddr_reset_temp <= 1'b0;
        end
        else begin
            ddr_reset_temp <= manu_reset[0];
        end
    end

    assign ddr_reset = ddr_reset_temp;    //写1复位

    (*KEEP="true"*)(* MARK_DEBUG="true" *)reg[7:0] modtype;
    reg fmodtype, qmodtype, bmodtype;
    (* MARK_DEBUG="true" *)wire fmod_type;
    (* MARK_DEBUG="true" *)wire qmod_type;
    (* MARK_DEBUG="true" *)wire bmod_type;

    assign order_in_tready = order_in_tvalid;   //随时准备接收指令， 当order_in_tvalid 为高的时候在往里面传输数据
    //reg[1:0] cnt_ord;
    //always@(posedge l_clk)begin          //用作调制方式选择
    //    if(~rst_n)begin
    //        cnt_ord <= 2'b0;
    //    end
    //    else begin
    //        if(order_in == 8'hF1 & order_in_tvalid==1'b1)begin          //功能码 更改调制方式
    //            cnt_ord <= cnt_ord + 2'b1;
    //        end
    //        if(cnt_ord == 2'b1)begin
    //            cnt_ord <= 2'b0;
    //        end
    //    end
    //end
    always@(posedge l_clk) begin
        if(~rst_n) begin
            modtype <= 8'b0;
        end
        else begin
            modtype <= modetype_in[7:0];
            //        if(cnt_ord == 2'b1 & order_in_tvalid==1'b1)begin
            //            modtype <= order_in;
            //        end
            //        if(~ddr_reset)begin     //复位之后功能清零
            //            modtype <= 8'b0;
            //        end
        end
    end
    //模式功能
    (*KEEP="true"*)(* MARK_DEBUG="true" *)reg[7:0] datatype;  //用作对抗样本的数据源选择
    //reg[1:0] cnt_datatype;
    //always@(posedge l_clk)begin
    //    if(~rst_n)begin
    //        cnt_datatype <= 2'b0;
    //    end
    //    else begin
    //        if(order_in == 8'hD1 & order_in_tvalid==1'b1)begin          //用作对抗样本的数据源选择
    //            cnt_datatype <= cnt_datatype + 2'b1;
    //        end
    //        if(cnt_datatype == 2'b1)begin
    //            cnt_datatype <= 2'b0;
    //        end
    //    end
    //end
    always@(posedge l_clk) begin
        if(~rst_n) begin
            datatype <= 8'b0;
        end
        else begin
            datatype <= datatype_in[7:0];
            //        if(cnt_datatype == 2'b1 & order_in_tvalid==1'b1)begin
            //            datatype <= order_in;
            //        end
            //        if(~ddr_reset)begin     //复位之后功能清零
            //            datatype <= 8'b0;
            //        end
        end
    end
    //模式功能
    (*KEEP="true"*)(* MARK_DEBUG="true" *)reg[7:0] codetype;  //编码方式功能码
    //reg[1:0] cnt_codetype;
    //always@(posedge l_clk)begin
    //    if(~rst_n)begin
    //        cnt_codetype <= 2'b0;
    //    end
    //    else begin
    //        if(order_in == 8'hC1 & order_in_tvalid==1'b1)begin          //用作编码方式功能码
    //            cnt_codetype <= cnt_codetype + 2'b1;
    //        end
    //        if(cnt_codetype == 2'b1)begin
    //            cnt_codetype <= 2'b0;
    //        end
    //    end
    //end
    always@(posedge l_clk) begin
        if(~rst_n) begin
            codetype <= 8'b0;
        end
        else begin
            codetype <= codetype_in[7:0];
            //        if(cnt_codetype == 2'b1 & order_in_tvalid==1'b1)begin
            //            codetype <= order_in;
            //        end
            //        if(~ddr_reset)begin     //复位之后功能清零
            //            codetype <= 8'b0;
            //        end
        end
    end
    //模式功能
    (*KEEP="true"*)(* MARK_DEBUG="true" *)reg[7:0] transtype;  //发射接收功能码
    //reg[1:0] cnt_transtype;
    //always@(posedge l_clk)begin
    //    if(~rst_n)begin
    //        cnt_transtype <= 2'b0;
    //    end
    //    else begin
    //        if(order_in == 8'hE1 & order_in_tvalid==1'b1)begin          //发射接收功能码
    //            cnt_transtype <= cnt_transtype + 2'b1;
    //        end
    //        if(cnt_transtype == 2'b1)begin
    //            cnt_transtype <= 2'b0;
    //        end
    //    end
    //end
    always@(posedge l_clk) begin
        if(~rst_n) begin
            transtype <= 8'b0;
        end
        else begin
            transtype <= transtype_in[7:0];
            //        if(cnt_transtype == 2'b1 & order_in_tvalid==1'b1)begin
            //            transtype <= order_in;
            //        end
            //        if(~ddr_reset)begin     //复位之后功能清零
            //            transtype <= 8'b0;
            //        end
        end
    end


    // 一次发送 一次应答
    (*KEEP="true"*)(* MARK_DEBUG="true" *) reg[31:0] ddr_cnt_temp;  //发射的全部基带的计数 这个地址为00000
    (*KEEP="true"*)(* MARK_DEBUG="true" *) reg[31:0] ddr_base_cnt_temp;

    //8月26日加入寄存器
    assign modetype_reg = {24'b0,modtype};
    assign datatype_reg = {24'b0,datatype};
    assign codetype_reg = {24'b0,codetype};
    assign transtype_reg = {24'b0,transtype};
    //应答码这里需要加一个fifo；

    //应答连线 不向外应答
    //assign order_out_tvalid = 1'b0;
    //assign order_out = 8'b0;

    // 进行模式选择
    always@(posedge l_clk) begin
        if(~rst_n) begin
            fmodtype <= 1'b0;
            qmodtype <= 1'b0;
            bmodtype <= 1'b0;
        end
        else begin
            case(modtype)
                8'h01: begin   //fsk
                    fmodtype <= 1'b1;
                    qmodtype <= 1'b0;
                    bmodtype <= 1'b0;
                end
                8'h02: begin
                    qmodtype <= 1'b1;
                    bmodtype <= 1'b0;
                    fmodtype <= 1'b0;
                end
                8'h03: begin
                    bmodtype <= 1'b1;
                    fmodtype <= 1'b0;
                    qmodtype <= 1'b0;
                end
                default: begin
                    bmodtype <= 1'b0;
                    fmodtype <= 1'b0;
                    qmodtype <= 1'b0;
                end
            endcase
        end
    end
    assign fmod_type = fmodtype;
    assign qmod_type = qmodtype;
    assign bmod_type = bmodtype;

    reg [31:0] ddr_base_stop_flag;   //为0的时候表示没有发送的数据，为1的时候表示已经发完了
    (*KEEP="true"*)(* MARK_DEBUG="true" *)reg [31:0] ddr_base_file_cnt;      //这个是用来进行计数的 ，计数读了多少个传入的字节数

    wire [11:0] qcosine,qsine,fcosine,fsine,bcosine,bsine;
    (* MARK_DEBUG="true" *)reg [11:0] cosine_temp,sine_temp;
    reg  data_in_ready_temp;   //data_in_ready 是向外输出的信号
    //wire [11:0] adc_data_fskL,adc_data_fskH,adc_data_qpskL,adc_data_qpskH,adc_data_bpskL,adc_data_bpskH;
    (* MARK_DEBUG="true" *)wire [7:0]  bdata_in_temp, qdata_in_temp, fdata_in_temp;
    wire [7:0]  bdata_out_temp, qdata_out_temp, fdata_out_temp;
    (* MARK_DEBUG="true" *)wire        bdata_in_valid_temp, qdata_in_valid_temp, fdata_in_valid_temp;
    (* MARK_DEBUG="true" *)wire        bdata_in_ready_temp, qdata_in_ready_temp, fdata_in_ready_temp;
    //wire        bdata_out_ready_temp,qdata_out_ready_temp,fdata_out_ready_temp;   //对应解调数据输出的信号， 这个信号是输入信号
    (* MARK_DEBUG="true" *)wire ori_start;
    (* MARK_DEBUG="true" *)wire fifo_q_valid_q,fifo_q_valid_b,fifo_q_valid_f;
    reg fifo_q_valid_temp;
    //延迟一个时钟周期，

    always@(posedge l_clk) begin    //选择是那种发射方式
        if(~rst_n) begin
            cosine_temp <= 12'b0;
            sine_temp <= 12'b0;
            data_in_ready_temp <= 1'b0;   // 1clk latency
            fifo_q_valid_temp <= 1'b0;    // 只有在模式datatyep==0x01时候有作用
        end
        else begin
            case(modtype)
                8'h01: begin
                    cosine_temp <= fcosine;
                    sine_temp <= fsine;
                    data_in_ready_temp <= fdata_in_ready_temp;
                    fifo_q_valid_temp <= fifo_q_valid_f;
                end
                8'h02: begin
                    cosine_temp <= qcosine;
                    sine_temp <= qsine;
                    data_in_ready_temp <= qdata_in_ready_temp;
                    fifo_q_valid_temp <= fifo_q_valid_q;
                end
                8'h03: begin
                    cosine_temp <= bcosine;
                    sine_temp <= bsine;
                    data_in_ready_temp <= bdata_in_ready_temp;
                    fifo_q_valid_temp <= fifo_q_valid_b;
                end
                default: begin
                    cosine_temp <= 12'b0;
                    sine_temp <= 12'b0;
                    fifo_q_valid_temp <= 1'b0;
                end
            endcase
        end
    end

    (* MARK_DEBUG="true" *)wire [7:0] fsk_data_out;
    (* MARK_DEBUG="true" *)wire [7:0] fsk_data_in;

    wire flag_base_start;
    assign flag_base_start = 1'b1;


    /* 模拟调制源 */
    QpskMod QpskInst(
        .ida_o 							(qcosine),  //cosein
        .qda_o 							(qsine),    //sine
        .clk_i 							(l_clk), 							// 工作主时钟，32m
        .rst_i 							(~rst_n | ddr_reset),
        .data_in                        (qdata_in_temp),
        .data_in_valid                  (qdata_in_valid_temp),
        .data_in_ready                  (qdata_in_ready_temp),      //添加的模式切换功能
        .top_in_ready                   (flag_base_start),//为了等待返回全部基带数据的间隔等待时间
        .ori_start                      (ori_start),  //输入1有效， 如果不是返回基带数据的过程，应该一直为1
        .fifo_q_valid                   (fifo_q_valid_q),//返回基带数据有效信号
        .codetype                       (codetype)
    );

    BpskMod BpskInst(
        .ida_o 							(bcosine),
        .qda_o 							(bsine),
        .clk_i 							(l_clk), 							// 工作主时钟，32m
        .rst_i 							(~rst_n | ddr_reset),
        .data_in                        (bdata_in_temp),
        .data_in_valid                  (bdata_in_valid_temp),
        .data_in_ready                  (bdata_in_ready_temp),
        .top_in_ready                   (flag_base_start),//为了等待返回全部基带数据的间隔等待时间
        .ori_start                      (ori_start),  //输入1有效， 如果不是返回基带数据的过程，应该一直为1
        .fifo_q_valid                   (fifo_q_valid_b), //返回基带数据有效信号
        .codetype                       (codetype)
    );

    FskMod FskInst0(
        .ida_o 							(fcosine),
        .qda_o 							(fsine),
        .clk_i 							(l_clk),
        .fsk_data_in                    (fdata_in_temp), 							// 工作主时钟，32m
        .rst_i 							(~rst_n | ddr_reset),
        .fsk_data_in_valid              (fdata_in_valid_temp),
        .fsk_data_in_ready              (fdata_in_ready_temp),
        .top_in_ready                   (flag_base_start),//为了等待返回全部基带数据的间隔等待时间;
        .ori_start                      (ori_start),  //输入1有效， 如果不是返回基带数据的过程，应该一直为1
        .fifo_q_valid                   (fifo_q_valid_f),//返回基带数据有效信号
        .codetype                       (codetype)
    );


    assign cosine = (datatype == 8'h0) ? cosine_temp : 12'b0;
    assign sine = (datatype == 8'h0) ? sine_temp : 12'b0;

    wire ori_pose;
    reg[1:0] ori_en_data;

    assign ori_start = (datatype == 8'h1) ? ori_pose : 1'b1;  //在模式1的情况下传入一个有效信号，

    //调制数据传输选择；
    assign bdata_in_temp = (bmodtype==1'b1) ? fsk_data_in : 8'b0;    //fsk_data_in
    assign bdata_in_valid_temp = (bmodtype==1'b1) ? fsk_data_in_tvalid : 1'b0;   //fsk_data_in_tvalid;
    assign qdata_in_temp = (qmodtype==1'b1) ? fsk_data_in : 8'b0;     //无延迟
    assign qdata_in_valid_temp = (qmodtype==1'b1) ? fsk_data_in_tvalid : 1'b0;
    assign fdata_in_temp = (fmodtype==1'b1) ? fsk_data_in : 8'b0;
    assign fdata_in_valid_temp = (fmodtype==1'b1) ? fsk_data_in_tvalid : 1'b0;
    assign fsk_data_in_tready = (bmodtype==1'b1) ? bdata_in_ready_temp : (qmodtype==1'b1) ? qdata_in_ready_temp : (fmodtype==1'b1) ? fdata_in_ready_temp : 1'b0;


    // 读取了多少传入文件的字节
    always@(posedge l_clk) begin
        if(~rst_n | ddr_reset) begin
            ddr_base_file_cnt <= 32'b0;
        end
        else begin
            if(fsk_data_in_tvalid & fsk_data_in_tready) begin
                ddr_base_file_cnt <= ddr_base_file_cnt + 32'b1;
            end
            else begin
                ddr_base_file_cnt <= ddr_base_file_cnt;
            end
        end
    end

    assign 	flag_16k 	=	1'b0;
    assign 	base_fm		=	16'd0;
    assign 	rdy_fm		= 1'b0;

    // 发射端根据0xD1功能码判断是传输1024个点还是全部的基带数据 datatype 在D1 为00的状态时 需要发射数据，这时候返回1024个基带数据，当为01时不发射，这时候返回全部基带数据
    (* MARK_DEBUG="true" *)reg [11:0] cnt_ori_1024;
    (* MARK_DEBUG="ture" *)reg [15:0] cnt_ori_base;
    parameter K_LENGTH = 12'd1024;  //这个值是存储基带数据的时候一次存储多少个点
    parameter K_BASE_LEN = 16'd16384;
    //*********** 基带数据抽样
    //测试抽样的不同数据
    reg[15:0]      samp_flag1;
    (* MARK_DEBUG="true" *)reg        clk_samp;  //分频计数时
    //分频计数时钟
    parameter 	   div_lpf_k = 31;// 时钟为32M 分频为1MH 31
    always@(posedge l_clk) begin
        if(~rst_n | ddr_reset) begin
            samp_flag1 <= 16'd0;
        end
        else begin
            if(samp_flag1 >= div_lpf_k) begin
                samp_flag1 <= 16'd0;
            end
            else begin
                samp_flag1 <= samp_flag1 + 16'd1;
            end
        end
    end
    always@(posedge l_clk) begin
        if(~rst_n | ddr_reset) begin
            clk_samp <= 0;
        end
        else begin
            if(samp_flag1 >= div_lpf_k) begin
                clk_samp <= 1'b1;
            end
            else begin
                clk_samp <= 1'b0;
            end
        end
    end
    //*********** 基带数据抽样
    //*********** 1024个基带数据的判断过程，这个需要根据传入进来的数据值非零段进行获取

    (* MARK_DEBUG="true" *)reg [63:0] ori_data_1024, ori_data_base, ori_data_temp;
    (* MARK_DEBUG="true" *)reg flag_ori;   //判断一下基带数据的值的大小
    (* MARK_DEBUG="true" *)reg ori_data_tvalid_temp,ori_data_tvalid_temp1,ori_data_tvalid_temp2;  //返回数据的有效信号
    always@(posedge l_clk) begin
        if(~rst_n | ddr_reset) begin
            flag_ori <= 1'b0;
        end
        else begin
            if(fsk_data_in_tvalid==1'b1 & datatype == 8'h00 & ori_en[0] == 1'b1) begin   //这种返回基带数据的1024个点 进行判断 用输入的数据有效进行
                flag_ori <= 1'b1;
            end
            else begin
                flag_ori <= 1'b0;
            end
        end
    end
    //在这里对基带信号进行抽样，采样时钟为1MHz---这个是返回1024个基带数据的 这个过程是用来计数1024的
    always@(posedge l_clk) begin
        if(~rst_n | ddr_reset) begin
            cnt_ori_1024 <= 12'b0;
        end
        else begin
            if(flag_ori==1'b1) begin    //从基带信号有值开始存1024个点 每一个时钟进行一次采样值
                if(clk_samp) begin
                    cnt_ori_1024 <= cnt_ori_1024 + 12'b1;
                    if(cnt_ori_1024 == K_LENGTH) begin
                        cnt_ori_1024 <= cnt_ori_1024;
                    end
                end
            end
            else begin
                cnt_ori_1024 <= 12'b0;
            end
        end
    end
    // 这个过程是实际用来存储1024个基带数据的
    always@(posedge l_clk) begin
        if(~rst_n | ddr_reset) begin
            ori_data_1024 <= 64'b0;
            ori_data_tvalid_temp1 <= 1'b0;
        end
        else begin
            if(cnt_ori_1024 == K_LENGTH) begin
                ori_data_1024 <= 64'b0;
                ori_data_tvalid_temp1 <= 1'b0;
            end
            else begin
                if(flag_ori==1'b1) begin    //这个加上了采样时钟
                    if(clk_samp) begin
                        ori_data_1024 <= {36'b0,cosine,4'b0,sine};
                        ori_data_tvalid_temp1 <= 1'b1;
                    end
                    else begin
                        ori_data_1024 <= 64'b0;
                        ori_data_tvalid_temp1 <= 1'b0;
                    end
                end
                else begin
                    ori_data_tvalid_temp1 <= 1'b0;
                    ori_data_1024 <= 64'b0;
                end
            end
        end
    end


    // 全部基带数据处理过程 返回全部基带数据
    (* MARK_DEBUG="true" *) reg flag_base;   //用于记录是否存基带数据 为1进行bu存储 为0进行存储

    // 对tx2传入的ori_en信号做上升沿检测
    always @(posedge l_clk) begin
        if(~rst_n) begin
            ori_en_data <= 2'b00;
        end
        else begin
            ori_en_data <= {ori_en_data, ori_en[0]};    //{前一状态，后一状态}
        end
    end
    //组合逻辑进行边沿检测
    //data_r[1]表示前一状态，data_r[0]表示后一状态
    assign  ori_pose = ~ori_en_data[1] & ori_en_data[0];

    always@(posedge l_clk) begin
        if(~rst_n | ddr_reset) begin
            flag_base <= 1'b0;
        end
        else begin
            if(datatype == 8'h01 & fifo_q_valid_temp==1'b1) begin  //只有在功能码正确时，同时存在信源的时候，并且tx2可以允许接收的时候才可以存储
                flag_base <= 1'b1;
            end
            else begin
                flag_base <= 1'b0;
            end
        end
    end
    // 每一包数据量的计数过程
    reg [4:0] cnt_1m;

    // 控制基带数据存储的过程
    always@(posedge l_clk) begin
        if(~rst_n | ddr_reset) begin
            ori_data_base <= 64'b0;
            ori_data_tvalid_temp2 <= 1'b0;
            cnt_1m <= 5'b0;
        end
        else begin
            if(flag_base==1'b1) begin   //模式选择正确，同时在进行传入数据过程
                cnt_1m <= cnt_1m + 5'b1;
                if(cnt_1m == 5'b0) begin
                    ori_data_base <= {36'b0,cosine_temp,4'b0,sine_temp};
                    ori_data_tvalid_temp2 <= 1'b1;
                end
                else begin
                    ori_data_base <= 64'b0;
                    ori_data_tvalid_temp2 <= 1'b0;
                end
            end
            else begin
                ori_data_base <= 64'b0;
                ori_data_tvalid_temp2 <= 1'b0;
                cnt_1m <= 5'b0;
            end
        end
    end

    // 全部基带数据中每一包基带数据的计数过程，这个每一包的数据应该都是设定的K_BASE_LEN
    always@(posedge l_clk) begin
        if(~rst_n | ddr_reset) begin
            ddr_cnt_temp <= 32'b0;
        end
        else begin
            if(ori_en[0] == 1'b1) begin  //这个控制计数清零只能通过ori_en
                if(ori_data_tvalid_temp2==1'b1) begin  //模式正确，fifo为非空  40960
                    ddr_cnt_temp <= ddr_cnt_temp + 32'b1;
                end
                else begin
                    ddr_cnt_temp <= ddr_cnt_temp;
                end
            end
            else begin
                ddr_cnt_temp <= 32'b0;
            end

        end
    end
    // 1024基带数据中每一包基带数据的计数过程，这个每一包的数据应该都是设定的K_BASE_LEN
    always@(posedge l_clk) begin
        if(~rst_n | ddr_reset) begin
            ddr_base_cnt_temp <= 32'b0;
        end
        else begin
            if(ori_en[0] == 1'b1) begin  //这个控制计数清零只能通过ori_en
                if(ori_data_tvalid_temp1==1'b1) begin  //模式正确，fifo为非空  40960
                    ddr_base_cnt_temp <= ddr_base_cnt_temp + 32'b1;
                end
                else begin
                    ddr_base_cnt_temp <= ddr_base_cnt_temp;
                end
            end
            else begin
                ddr_base_cnt_temp <= 32'b0;
            end
        end
    end
    (* MARK_DEBUG="true" *) wire ori_data_tready_test;
    //这个用来选择是哪一路时钟，
    //这里面还需要考虑另一个问题，如何在全部信息没有之后停止
    always@(posedge l_clk) begin
        if(~rst_n | ddr_reset) begin
            ori_data_tvalid_temp <= 1'b0;
            ori_data_temp <= 64'b0;
        end
        else begin
            case(datatype)
                8'h00: begin    //应该在这个位置添加抽样
                    ori_data_tvalid_temp <= ori_data_tvalid_temp1;
                    ori_data_temp <= ori_data_1024;
                end
                8'h01: begin
                    ori_data_tvalid_temp <= ori_data_tvalid_temp2;//ori_data_valid_fout;
                    ori_data_temp <= ori_data_base;//ori_data_base_fout;
                end
                default: begin
                    ori_data_tvalid_temp <= 1'b0;
                    ori_data_temp <= 64'b0;
                end
            endcase
        end
    end

    assign ddr_cnt = ddr_cnt_temp;
    assign ddr_base_cnt = ddr_base_cnt_temp;
    assign ddr_data_cnt = ddr_base_file_cnt;
    assign  ori_data_tvalid = ori_data_tvalid_temp & ori_data_tready;  // 先让这个数一直为1 这里做一个更改

    assign  ori_data_out = ori_data_temp;
    assign  ori_data_tready_test = ori_data_tready;


endmodule
