module RegFile #(ADDR_WIDTH = 1, DATA_WIDTH = 1) (
    input  clk,
    input  [ADDR_WIDTH-1:0] raddr1,
    input  [ADDR_WIDTH-1:0] raddr2,
    input  [DATA_WIDTH-1:0] wdata,
    input  [ADDR_WIDTH-1:0] waddr,
    input  wen,
    output [DATA_WIDTH-1:0] rdata1,
    output [DATA_WIDTH-1:0] rdata2
);
  
    reg [DATA_WIDTH-1:0] rdata1r;
    reg [DATA_WIDTH-1:0] rdata1r;
    reg [DATA_WIDTH-1:0] rf [2**ADDR_WIDTH-1:0];
    
    always @(posedge clk) begin
        if (wen) rf[waddr] <= wdata;
    end

    always @(posedge clk) begin
        if (raddr1 == 0) begin
            rdata1r <= 0;
        end
        else begin
            rdata1r <= rf[raddr1];
        end
    end

    always @(posedge clk) begin
        if (raddr2 == 0) begin
            rdata2r <= 0;
        end
        else begin
            rdata2r <= rf[raddr2];
        end
    end

    assign rdata1 = rdata1r;
    assign rdata2 = rdata2r;

endmodule
