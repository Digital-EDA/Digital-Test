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

/* @wavedrom this is wavedrom demo1
{
    signal : [
        { name: "clk",  wave: "p......" },
        { name: "bus",  wave: "x.34.5x", data: "head body tail" },
        { name: "wire", wave: "0.1..0." }
    ]
}
*/


/* @wavedrom this is wavedrom demo2
{ 
    signal: [
    { name: "pclk", wave: "p......." },
    { name: "Pclk", wave: "P......." },
    { name: "nclk", wave: "n......." },
    { name: "Nclk", wave: "N......." },
    {},
    { name: "clk0", wave: "phnlPHNL" },
    { name: "clk1", wave: "xhlhLHl." },
    { name: "clk2", wave: "hpHplnLn" },
    { name: "clk3", wave: "nhNhplPl" },
    { name: "clk4", wave: "xlh.L.Hx" },
]}
*/