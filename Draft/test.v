module clkdiv(
    input clk50,
    input rst_n,
    output reg clkout
);
    reg [15:0] cnt;
    always @(posedge clk50 or negedge rst_n)
    begin
        if(!rst_n)
        begin
            cnt <= 16'b0;
            clkout <= 1'b0;
        end
        else if(cnt == 16'd162) 
        begin
            clkout <= 1'b1;
            cnt <= cnt + 16'd1;
        end
            else if(cnt == 16'd325) 
        begin
            clkout <= 1'b0;
            cnt <= 16'd0;
        end
            else 
        begin
            cnt <= cnt + 16'd1;
        end
    end
endmodule



// module des_sample (
//     input            clk,
//     input            rst,
//     output reg [7:0] nums
// );

//     always @(posedge clk or negedge rst) begin
//         if (!rst) begin
//             nums = 8'h00;
//         end else begin
//             nums = nums + 1;
//         end
//     end

// endmodule