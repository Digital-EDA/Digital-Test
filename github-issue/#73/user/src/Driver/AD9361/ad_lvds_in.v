`timescale 1ns/100ps

module ad_lvds_in (
        // data interface
        input               rx_clk,
        input               rx_data_in_p,
        input               rx_data_in_n,
        output              rx_data_p,
        output  reg         rx_data_n,

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
    parameter   IODELAY_CTRL = 0;
    parameter   IODELAY_GROUP = "dev_if_delay_group";
    localparam  SERIES7 = 0;
    localparam  VIRTEX6 = 1;

    // internal signals
    wire                rx_data_n_s;
    wire                rx_data_ibuf_s;
    wire                rx_data_idelay_s;

    // delay controller
    generate
        if (IODELAY_CTRL == 1) begin
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

    // receive data interface, ibuf -> idelay -> iddr
    IBUFDS i_rx_data_ibuf (
        .I (rx_data_in_p),
        .IB (rx_data_in_n),
        .O (rx_data_ibuf_s)
    );

    if (BUFTYPE == VIRTEX6) begin
        (* IODELAY_GROUP = IODELAY_GROUP *)
        IODELAYE1 #(
            .CINVCTRL_SEL ("FALSE"),
            .DELAY_SRC ("I"),
            .HIGH_PERFORMANCE_MODE ("TRUE"),
            .IDELAY_TYPE ("VAR_LOADABLE"),
            .IDELAY_VALUE (0),
            .ODELAY_TYPE ("FIXED"),
            .ODELAY_VALUE (0),
            .REFCLK_FREQUENCY (200.0),
            .SIGNAL_PATTERN ("DATA"))
        i_rx_data_idelay (
            .T (1'b1),
            .CE (1'b0),
            .INC (1'b0),
            .CLKIN (1'b0),
            .DATAIN (1'b0),
            .ODATAIN (1'b0),
            .CINVCTRL (1'b0),
            .C (up_clk),
            .IDATAIN (rx_data_ibuf_s),
            .DATAOUT (rx_data_idelay_s),
            .RST (up_dld),
            .CNTVALUEIN (up_dwdata),
            .CNTVALUEOUT (up_drdata)
        );
    end
    else begin
        (* IODELAY_GROUP = IODELAY_GROUP *)
        IDELAYE2 #(
            .CINVCTRL_SEL ("FALSE"),
            .DELAY_SRC ("IDATAIN"),
            .HIGH_PERFORMANCE_MODE ("FALSE"),
            .IDELAY_TYPE ("VAR_LOAD"),
            .IDELAY_VALUE (0),
            .REFCLK_FREQUENCY (200.0),
            .PIPE_SEL ("FALSE"),
            .SIGNAL_PATTERN ("DATA"))
        i_rx_data_idelay (
            .CE (1'b0),
            .INC (1'b0),
            .DATAIN (1'b0),
            .LDPIPEEN (1'b0),
            .CINVCTRL (1'b0),
            .REGRST (1'b0),
            .C (up_clk),
            .IDATAIN (rx_data_ibuf_s),
            .DATAOUT (rx_data_idelay_s),
            .LD (up_dld),
            .CNTVALUEIN (up_dwdata),
            .CNTVALUEOUT (up_drdata)
        );
    end

    IDDR #(
        .DDR_CLK_EDGE ("SAME_EDGE_PIPELINED"),
        .INIT_Q1 (1'b0),
        .INIT_Q2 (1'b0),
        .SRTYPE ("ASYNC"))
    i_rx_data_iddr (
        .CE (1'b1),
        .R (1'b0),
        .S (1'b0),
        .C (rx_clk),
        .D (rx_data_idelay_s),
        .Q1 (rx_data_p),
        .Q2 (rx_data_n_s)
    );

    always @(posedge rx_clk) begin
        rx_data_n <= rx_data_n_s;
    end

endmodule

// ***************************************************************************
// ***************************************************************************
