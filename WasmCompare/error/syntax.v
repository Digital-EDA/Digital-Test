module hello(
    input clk, reset,
    output hi
);

    wire ffd;
    reg ttd;
    
    test u_test(
        .port_1 (clk),
        .port_2 (reset)
    );

endmodule