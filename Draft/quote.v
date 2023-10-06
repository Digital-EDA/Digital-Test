module main();
    
    
    // outports wire
    wire         	clkout;
    
    clkdiv u_clkdiv(
        .clk50  	( clk50   ),
        .rst_n  	( rst_n   ),
        .clkout 	( clkout  )
    );
    
    
    
endmodule //main
