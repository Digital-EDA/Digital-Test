module Alu (
        input  [63:0] src1,
        input  [63:0] src2,
        input  [63:0] imm,
        input  en_imm,
        output [63:0] alu_result
    );

    wire [63:0] real_src2;
    wire [63:0] sum;

    assign real_src2 = en_imm ? imm : src2;
    assign sum = src1 + real_src2;

    assign alu_result = sum;

endmodule //add
