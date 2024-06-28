module PC (
    input         clk,
    input         rst,
    input  [63:0] next_pc,
    output [63:0] pc
);


Reg #(
    .DATA_WIDTH 	( 64    ),
    .RESET_VAL  	( 64'h80000000 )
) pc_reg (
    .clk  	( clk       ),
    .rst  	( rst       ),
    .din  	( next_pc   ),
    .dout 	( pc        )
);
    
endmodule //PC
