module led (
    input      key,  // key in
    output     led   // led out
);
    assign led = ~key;
    
endmodule //led
