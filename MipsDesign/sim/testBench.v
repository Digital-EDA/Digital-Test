`include "../src/MyCpu.v"

module testBench();
    reg clock;
    reg reset;

    initial begin
        $display("begin simulate");
        $dumpfile("../simulation/icarus/wave.vcd"); 
        $dumpvars;
        clock = 0;
        reset = 0;
        #20 reset = ~reset;
        #30000 $finish;    
    end

    MyCpu u_MyCpu(
        .clock(clock),
        .reset(reset)
    );

    always #20 clock = ~clock;

endmodule

