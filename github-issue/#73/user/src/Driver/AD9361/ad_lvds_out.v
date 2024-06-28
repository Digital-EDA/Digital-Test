`timescale 1ns/100ps

module ad_lvds_out (
        // data interface
        input               tx_clk,
        input               tx_data_p,
        input               tx_data_n,
        output              tx_data_out_p,
        output              tx_data_out_n,

        // delay-data interface
        input               up_clk,
        input               up_dld,
        input       [ 4:0]  up_dwdata,
        output      [ 4:0]  up_drdata,

        // delay-cntrl interface
        input               delay_clk,
        input               delay_rst,
        output              delay_locked
    );

    // parameters
    parameter   BUFTYPE = 0;
    parameter   IODELAY_ENABLE = 0;
    parameter   IODELAY_CTRL = 0;
    parameter   IODELAY_GROUP = "dev_if_delay_group";
    localparam  SERIES7 = 0;
    localparam  VIRTEX6 = 1;

    // internal signals
    wire                tx_data_oddr_s;
    wire                tx_data_odelay_s;

    // delay controller
    generate
        if ((IODELAY_ENABLE == 1) && (BUFTYPE == SERIES7) && (IODELAY_CTRL == 1)) begin
            (* IODELAY_GROUP = IODELAY_GROUP *)
            IDELAYCTRL i_delay_ctrl (
                .RST (delay_rst),
                .REFCLK (delay_clk),
                .RDY (delay_locked)
            );
        end
        else begin
            assign delay_locked = 1'b1;
        end
    endgenerate

    // transmit data interface, oddr -> odelay -> obuf

    ODDR #(
        .DDR_CLK_EDGE ("SAME_EDGE"),
        .INIT (1'b0),
        .SRTYPE ("ASYNC"))
    i_tx_data_oddr (
        .CE (1'b1),
        .R (1'b0),
        .S (1'b0),
        .C (tx_clk),
        .D1 (tx_data_p),
        .D2 (tx_data_n),
        .Q (tx_data_oddr_s)
    );

    generate
        if ((IODELAY_ENABLE == 1) && (BUFTYPE == SERIES7)) begin
            (* IODELAY_GROUP = IODELAY_GROUP *)
            ODELAYE2 #(
                .CINVCTRL_SEL ("FALSE"),
                .DELAY_SRC ("ODATAIN"),
                .HIGH_PERFORMANCE_MODE ("FALSE"),
                .ODELAY_TYPE ("VAR_LOAD"),
                .ODELAY_VALUE (0),
                .REFCLK_FREQUENCY (200.0),
                .PIPE_SEL ("FALSE"),
                .SIGNAL_PATTERN ("DATA"))
            i_tx_data_odelay (
                .CE (1'b0),
                .CLKIN (1'b0),
                .INC (1'b0),
                .LDPIPEEN (1'b0),
                .CINVCTRL (1'b0),
                .REGRST (1'b0),
                .C (up_clk),
                .ODATAIN (tx_data_oddr_s),
                .DATAOUT (tx_data_odelay_s),
                .LD (up_dld),
                .CNTVALUEIN (up_dwdata),
                .CNTVALUEOUT (up_drdata)
            );
        end
        else begin
            assign up_drdata = 5'd0;
            assign tx_data_odelay_s = tx_data_oddr_s;
        end
    endgenerate

    OBUFDS i_tx_data_obuf (
        .I (tx_data_odelay_s),
        .O (tx_data_out_p),
        .OB (tx_data_out_n)
    );

endmodule
