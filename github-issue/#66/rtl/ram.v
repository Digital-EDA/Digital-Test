module ram #(ADDR_WIDTH = 1, DATA_WIDTH = 1) (
    input  clk,
    input  [ADDR_WIDTH-1:0] addr,
    output [DATA_WIDTH-1:0] data
);

    reg [DATA_WIDTH-1:0] ram [2**ADDR_WIDTH-1:0];
    
    assign data = ram[addr];

endmodule //ram
