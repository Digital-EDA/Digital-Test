module InstFetch (
    input  clk,
    input  rst,
    input  [63:0] next_inst,
    output [63:0] inst
);

    Reg #(
        .DATA_WIDTH 	( 63  ),
        .RESET_VAL  	( 0   )
    ) u_Reg (
        .clk  	( clk        ),
        .rst  	( rst        ),
        .din  	( next_inst  ),
        .dout 	( inst       )
    );
    
endmodule //InstFetch
