
module adder_4bit(
        input wire [3:0] A,
        input wire [3:0] B,
        output wire [3:0] Sum,
        output wire CarryOut
    );




    wire [4:0] temp;

    assign temp = ({1'b0,A}) + ({1'b0,B});
    assign Sum = temp[3:0];
    assign CarryOut =  ~(temp[4]);

endmodule
