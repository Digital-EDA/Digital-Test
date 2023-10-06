/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AD1HDV0 ( CO, S, A, B, CI); 
input A, B, CI;
output CO, S;

 
  xor I0(S, A, B, CI); 
  and I1(a_and_b, A, B); 
  and I2(a_and_ci, A, CI); 
  and I3(b_and_ci, B, CI); 
  or  I4(CO, a_and_b, a_and_ci, b_and_ci); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AD1HDV0C ( CO, S, A, B, CI); 
input A, B, CI;
output CO, S;

 
  xor I0(S, A, B, CI); 
  and I1(a_and_b, A, B); 
  and I2(a_and_ci, A, CI); 
  and I3(b_and_ci, B, CI); 
  or  I4(CO, a_and_b, a_and_ci, b_and_ci); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AD1HDV1 ( CO, S, A, B, CI); 
input A, B, CI;
output CO, S;

 
  xor I0(S, A, B, CI); 
  and I1(a_and_b, A, B); 
  and I2(a_and_ci, A, CI); 
  and I3(b_and_ci, B, CI); 
  or  I4(CO, a_and_b, a_and_ci, b_and_ci); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AD1HDV1C ( CO, S, A, B, CI); 
input A, B, CI;
output CO, S;

 
  xor I0(S, A, B, CI); 
  and I1(a_and_b, A, B); 
  and I2(a_and_ci, A, CI); 
  and I3(b_and_ci, B, CI); 
  or  I4(CO, a_and_b, a_and_ci, b_and_ci); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AD1HDV2 ( CO, S, A, B, CI); 
input A, B, CI;
output CO, S;

 
  xor I0(S, A, B, CI); 
  and I1(a_and_b, A, B); 
  and I2(a_and_ci, A, CI); 
  and I3(b_and_ci, B, CI); 
  or  I4(CO, a_and_b, a_and_ci, b_and_ci); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AD1HDV2C ( CO, S, A, B, CI); 
input A, B, CI;
output CO, S;

 
  xor I0(S, A, B, CI); 
  and I1(a_and_b, A, B); 
  and I2(a_and_ci, A, CI); 
  and I3(b_and_ci, B, CI); 
  or  I4(CO, a_and_b, a_and_ci, b_and_ci); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AD1HDV4 ( CO, S, A, B, CI); 
input A, B, CI;
output CO, S;

 
  xor I0(S, A, B, CI); 
  and I1(a_and_b, A, B); 
  and I2(a_and_ci, A, CI); 
  and I3(b_and_ci, B, CI); 
  or  I4(CO, a_and_b, a_and_ci, b_and_ci); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AD1HDV4C ( CO, S, A, B, CI); 
input A, B, CI;
output CO, S;

 
  xor I0(S, A, B, CI); 
  and I1(a_and_b, A, B); 
  and I2(a_and_ci, A, CI); 
  and I3(b_and_ci, B, CI); 
  or  I4(CO, a_and_b, a_and_ci, b_and_ci); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module ADH1HDV0 ( CO, S, A, B); 
input A, B;
output CO, S;

 
  xor I0(S, A, B); 
  and I1(CO, A, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	// arc posedge A --> (S:A) 
	 (posedge A => (S:A)) = (1.0,1.0); 
 
	// arc negedge A --> (S:A) 
	 (negedge A => (S:A)) = (1.0,1.0); 
 
	// arc posedge B --> (S:B) 
	 (posedge B => (S:B)) = (1.0,1.0); 
 
	// arc negedge B --> (S:B) 
	 (negedge B => (S:B)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module ADH1HDV0C ( CO, S, A, B); 
input A, B;
output CO, S;

 
  xor I0(S, A, B); 
  and I1(CO, A, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	// arc posedge A --> (S:A) 
	 (posedge A => (S:A)) = (1.0,1.0); 
 
	// arc negedge A --> (S:A) 
	 (negedge A => (S:A)) = (1.0,1.0); 
 
	// arc posedge B --> (S:B) 
	 (posedge B => (S:B)) = (1.0,1.0); 
 
	// arc negedge B --> (S:B) 
	 (negedge B => (S:B)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module ADH1HDV1 ( CO, S, A, B); 
input A, B;
output CO, S;

 
  xor I0(S, A, B); 
  and I1(CO, A, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	// arc posedge A --> (S:A) 
	 (posedge A => (S:A)) = (1.0,1.0); 
 
	// arc negedge A --> (S:A) 
	 (negedge A => (S:A)) = (1.0,1.0); 
 
	// arc posedge B --> (S:B) 
	 (posedge B => (S:B)) = (1.0,1.0); 
 
	// arc negedge B --> (S:B) 
	 (negedge B => (S:B)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module ADH1HDV1C ( CO, S, A, B); 
input A, B;
output CO, S;

 
  xor I0(S, A, B); 
  and I1(CO, A, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	// arc posedge A --> (S:A) 
	 (posedge A => (S:A)) = (1.0,1.0); 
 
	// arc negedge A --> (S:A) 
	 (negedge A => (S:A)) = (1.0,1.0); 
 
	// arc posedge B --> (S:B) 
	 (posedge B => (S:B)) = (1.0,1.0); 
 
	// arc negedge B --> (S:B) 
	 (negedge B => (S:B)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module ADH1HDV2 ( CO, S, A, B); 
input A, B;
output CO, S;

 
  xor I0(S, A, B); 
  and I1(CO, A, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	// arc posedge A --> (S:A) 
	 (posedge A => (S:A)) = (1.0,1.0); 
 
	// arc negedge A --> (S:A) 
	 (negedge A => (S:A)) = (1.0,1.0); 
 
	// arc posedge B --> (S:B) 
	 (posedge B => (S:B)) = (1.0,1.0); 
 
	// arc negedge B --> (S:B) 
	 (negedge B => (S:B)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module ADH1HDV2C ( CO, S, A, B); 
input A, B;
output CO, S;

 
  xor I0(S, A, B); 
  and I1(CO, A, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	// arc posedge A --> (S:A) 
	 (posedge A => (S:A)) = (1.0,1.0); 
 
	// arc negedge A --> (S:A) 
	 (negedge A => (S:A)) = (1.0,1.0); 
 
	// arc posedge B --> (S:B) 
	 (posedge B => (S:B)) = (1.0,1.0); 
 
	// arc negedge B --> (S:B) 
	 (negedge B => (S:B)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module ADH1HDV4 ( CO, S, A, B); 
input A, B;
output CO, S;

 
  xor I0(S, A, B); 
  and I1(CO, A, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	// arc posedge A --> (S:A) 
	 (posedge A => (S:A)) = (1.0,1.0); 
 
	// arc negedge A --> (S:A) 
	 (negedge A => (S:A)) = (1.0,1.0); 
 
	// arc posedge B --> (S:B) 
	 (posedge B => (S:B)) = (1.0,1.0); 
 
	// arc negedge B --> (S:B) 
	 (negedge B => (S:B)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module ADH1HDV4C ( CO, S, A, B); 
input A, B;
output CO, S;

 
  xor I0(S, A, B); 
  and I1(CO, A, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	// arc posedge A --> (S:A) 
	 (posedge A => (S:A)) = (1.0,1.0); 
 
	// arc negedge A --> (S:A) 
	 (negedge A => (S:A)) = (1.0,1.0); 
 
	// arc posedge B --> (S:B) 
	 (posedge B => (S:B)) = (1.0,1.0); 
 
	// arc negedge B --> (S:B) 
	 (negedge B => (S:B)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND2HDV0 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    and SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND2HDV1 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    and SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND2HDV12 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    and SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND2HDV2 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    and SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND2HDV4 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    and SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND2HDV8 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    and SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND3HDV0 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

   
  and (Z, A1, A2, A3); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND3HDV1 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

   
  and (Z, A1, A2, A3); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND3HDV2 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

   
  and (Z, A1, A2, A3); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND3HDV4 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

   
  and (Z, A1, A2, A3); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND3HDV8 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

   
  and (Z, A1, A2, A3); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND4HDV0 ( Z, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output Z;

    
  and (Z, A1, A2, A3, A4); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	// arc A4 --> Z 
	 (A4 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND4HDV1 ( Z, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output Z;

    
  and (Z, A1, A2, A3, A4); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	// arc A4 --> Z 
	 (A4 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND4HDV2 ( Z, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output Z;

    
  and (Z, A1, A2, A3, A4); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	// arc A4 --> Z 
	 (A4 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AND4HDV4 ( Z, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output Z;

    
  and (Z, A1, A2, A3, A4); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	// arc A4 --> Z 
	 (A4 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO1B2HDV0 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
    and I0(OUT0, A1, A2); 
    not I1(B_inv, B); 
    or  I2(Z, OUT0, B_inv); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO1B2HDV1 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
    and I0(OUT0, A1, A2); 
    not I1(B_inv, B); 
    or  I2(Z, OUT0, B_inv); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO1B2HDV2 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
    and I0(OUT0, A1, A2); 
    not I1(B_inv, B); 
    or  I2(Z, OUT0, B_inv); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO1B2HDV4 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
    and I0(OUT0, A1, A2); 
    not I1(B_inv, B); 
    or  I2(Z, OUT0, B_inv); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO1B2HDV8 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
    and I0(OUT0, A1, A2); 
    not I1(B_inv, B); 
    or  I2(Z, OUT0, B_inv); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO1B2HDVL ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
    and I0(OUT0, A1, A2); 
    not I1(B_inv, B); 
    or  I2(Z, OUT0, B_inv); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO211HDV0 ( Z, A1, A2, B, C); 
input A1, A2, B, C;
output Z;

 
    and I0(OUT0, A1, A2); 
    or I1(Z, B, C, OUT0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO211HDV1 ( Z, A1, A2, B, C); 
input A1, A2, B, C;
output Z;

 
    and I0(OUT0, A1, A2); 
    or I1(Z, B, C, OUT0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO211HDV2 ( Z, A1, A2, B, C); 
input A1, A2, B, C;
output Z;

 
    and I0(OUT0, A1, A2); 
    or I1(Z, B, C, OUT0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO211HDV4 ( Z, A1, A2, B, C); 
input A1, A2, B, C;
output Z;

 
    and I0(OUT0, A1, A2); 
    or I1(Z, B, C, OUT0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO21HDV0 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
    and I0(OUT0, A1, A2); 
    buf I1(OUT1, B); 
    or I2(Z, OUT0, OUT1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO21HDV1 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
    and I0(OUT0, A1, A2); 
    buf I1(OUT1, B); 
    or I2(Z, OUT0, OUT1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO21HDV2 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
    and I0(OUT0, A1, A2); 
    buf I1(OUT1, B); 
    or I2(Z, OUT0, OUT1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO21HDV4 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
    and I0(OUT0, A1, A2); 
    buf I1(OUT1, B); 
    or I2(Z, OUT0, OUT1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO21HDV8 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
    and I0(OUT0, A1, A2); 
    buf I1(OUT1, B); 
    or I2(Z, OUT0, OUT1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO221HDV0 ( Z, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output Z;

  
   and I0(OUT0, A1, A2); 
   and I1(OUT1, B1, B2); 
   or  I2(Z, C, OUT0, OUT1);  
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO221HDV1 ( Z, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output Z;

  
   and I0(OUT0, A1, A2); 
   and I1(OUT1, B1, B2); 
   or  I2(Z, C, OUT0, OUT1);  
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO221HDV2 ( Z, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output Z;

  
   and I0(OUT0, A1, A2); 
   and I1(OUT1, B1, B2); 
   or  I2(Z, C, OUT0, OUT1);  
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO221HDV4 ( Z, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output Z;

  
   and I0(OUT0, A1, A2); 
   and I1(OUT1, B1, B2); 
   or  I2(Z, C, OUT0, OUT1);  
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO222HDV0 ( Z, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output Z;

    
   and I0(OUT0, A1, A2); 
   and I1(OUT1, B1, B2); 
   and I2(OUT2, C1, C2); 
   or  I3(Z, OUT0, OUT1, OUT2); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO222HDV1 ( Z, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output Z;

    
   and I0(OUT0, A1, A2); 
   and I1(OUT1, B1, B2); 
   and I2(OUT2, C1, C2); 
   or  I3(Z, OUT0, OUT1, OUT2); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO222HDV2 ( Z, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output Z;

    
   and I0(OUT0, A1, A2); 
   and I1(OUT1, B1, B2); 
   and I2(OUT2, C1, C2); 
   or  I3(Z, OUT0, OUT1, OUT2); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO222HDV4 ( Z, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output Z;

    
   and I0(OUT0, A1, A2); 
   and I1(OUT1, B1, B2); 
   and I2(OUT2, C1, C2); 
   or  I3(Z, OUT0, OUT1, OUT2); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO22HDV0 ( Z, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output Z;

    
   and I0(OUT0, A1, A2); 
   and I1(OUT1, B1, B2); 
   or  I2(Z, OUT0, OUT1); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO22HDV1 ( Z, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output Z;

    
   and I0(OUT0, A1, A2); 
   and I1(OUT1, B1, B2); 
   or  I2(Z, OUT0, OUT1); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO22HDV2 ( Z, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output Z;

    
   and I0(OUT0, A1, A2); 
   and I1(OUT1, B1, B2); 
   or  I2(Z, OUT0, OUT1); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO22HDV4 ( Z, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output Z;

    
   and I0(OUT0, A1, A2); 
   and I1(OUT1, B1, B2); 
   or  I2(Z, OUT0, OUT1); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO31HDV0 ( Z, A1, A2, A3, B); 
input A1, A2, A3, B;
output Z;

    
   and I0(OUT0, A1, A2, A3); 
   or  I1(Z, B, OUT0); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO31HDV1 ( Z, A1, A2, A3, B); 
input A1, A2, A3, B;
output Z;

    
   and I0(OUT0, A1, A2, A3); 
   or  I1(Z, B, OUT0); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO31HDV2 ( Z, A1, A2, A3, B); 
input A1, A2, A3, B;
output Z;

    
   and I0(OUT0, A1, A2, A3); 
   or  I1(Z, B, OUT0); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO31HDV4 ( Z, A1, A2, A3, B); 
input A1, A2, A3, B;
output Z;

    
   and I0(OUT0, A1, A2, A3); 
   or  I1(Z, B, OUT0); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO32HDV0 ( Z, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output Z;

    
  and I0(OUT0, A1, A2, A3); 
  and I1(OUT1, B1, B2); 
  or  I2(Z, OUT0, OUT1); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO32HDV1 ( Z, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output Z;

    
  and I0(OUT0, A1, A2, A3); 
  and I1(OUT1, B1, B2); 
  or  I2(Z, OUT0, OUT1); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO32HDV2 ( Z, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output Z;

    
  and I0(OUT0, A1, A2, A3); 
  and I1(OUT1, B1, B2); 
  or  I2(Z, OUT0, OUT1); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO32HDV4 ( Z, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output Z;

    
  and I0(OUT0, A1, A2, A3); 
  and I1(OUT1, B1, B2); 
  or  I2(Z, OUT0, OUT1); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO33HDV0 ( Z, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output Z;

    
  and I0(OUT0, A1, A2, A3); 
  and I1(OUT1, B1, B2, B3); 
  or  I2(Z, OUT0, OUT1); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO33HDV1 ( Z, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output Z;

    
  and I0(OUT0, A1, A2, A3); 
  and I1(OUT1, B1, B2, B3); 
  or  I2(Z, OUT0, OUT1); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO33HDV2 ( Z, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output Z;

    
  and I0(OUT0, A1, A2, A3); 
  and I1(OUT1, B1, B2, B3); 
  or  I2(Z, OUT0, OUT1); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AO33HDV4 ( Z, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output Z;

    
  and I0(OUT0, A1, A2, A3); 
  and I1(OUT1, B1, B2, B3); 
  or  I2(Z, OUT0, OUT1); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOAI211HDV0 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

	not SMC_I0( A1_inv, A1 ); 
	not SMC_I1( B_inv, B ); 
	and SMC_I2( ZN_row1, A1_inv, B_inv ); 
	not SMC_I3( A2_inv, A2 ); 
	and SMC_I4( ZN_row2, A2_inv, B_inv ); 
	not SMC_I5( C_inv, C ); 
	or SMC_I6( ZN, ZN_row1, ZN_row2, C_inv ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOAI211HDV1 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

	not SMC_I0( A1_inv, A1 ); 
	not SMC_I1( B_inv, B ); 
	and SMC_I2( ZN_row1, A1_inv, B_inv ); 
	not SMC_I3( A2_inv, A2 ); 
	and SMC_I4( ZN_row2, A2_inv, B_inv ); 
	not SMC_I5( C_inv, C ); 
	or SMC_I6( ZN, ZN_row1, ZN_row2, C_inv ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOAI211HDV2 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

	not SMC_I0( A1_inv, A1 ); 
	not SMC_I1( B_inv, B ); 
	and SMC_I2( ZN_row1, A1_inv, B_inv ); 
	not SMC_I3( A2_inv, A2 ); 
	and SMC_I4( ZN_row2, A2_inv, B_inv ); 
	not SMC_I5( C_inv, C ); 
	or SMC_I6( ZN, ZN_row1, ZN_row2, C_inv ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOAI211HDV4 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

	not SMC_I0( A1_inv, A1 ); 
	not SMC_I1( B_inv, B ); 
	and SMC_I2( ZN_row1, A1_inv, B_inv ); 
	not SMC_I3( A2_inv, A2 ); 
	and SMC_I4( ZN_row2, A2_inv, B_inv ); 
	not SMC_I5( C_inv, C ); 
	or SMC_I6( ZN, ZN_row1, ZN_row2, C_inv ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOAI211HDV8 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

	not SMC_I0( A1_inv, A1 ); 
	not SMC_I1( B_inv, B ); 
	and SMC_I2( ZN_row1, A1_inv, B_inv ); 
	not SMC_I3( A2_inv, A2 ); 
	and SMC_I4( ZN_row2, A2_inv, B_inv ); 
	not SMC_I5( C_inv, C ); 
	or SMC_I6( ZN, ZN_row1, ZN_row2, C_inv ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOAI211HDVL ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

	not SMC_I0( A1_inv, A1 ); 
	not SMC_I1( B_inv, B ); 
	and SMC_I2( ZN_row1, A1_inv, B_inv ); 
	not SMC_I3( A2_inv, A2 ); 
	and SMC_I4( ZN_row2, A2_inv, B_inv ); 
	not SMC_I5( C_inv, C ); 
	or SMC_I6( ZN, ZN_row1, ZN_row2, C_inv ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI211HDV0 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

    
  and I0(out0, A1, A2); 
  nor I1(ZN, B, C, out0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI211HDV1 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

    
  and I0(out0, A1, A2); 
  nor I1(ZN, B, C, out0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI211HDV2 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

    
  and I0(out0, A1, A2); 
  nor I1(ZN, B, C, out0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI211HDV4 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

    
  and I0(out0, A1, A2); 
  nor I1(ZN, B, C, out0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI211HDV8 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

    
  and I0(out0, A1, A2); 
  nor I1(ZN, B, C, out0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI211HDVL ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

    
  and I0(out0, A1, A2); 
  nor I1(ZN, B, C, out0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI21BHDV0 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

 
    and SMC_I0(OUT0, B1, B2); 
    not SMC_I1(OUT1, A);
    nor	SMC_I2(ZN, OUT0, OUT1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI21BHDV1 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

 
    and SMC_I0(OUT0, B1, B2); 
    not SMC_I1(OUT1, A);
    nor	SMC_I2(ZN, OUT0, OUT1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI21BHDV2 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

 
    and SMC_I0(OUT0, B1, B2); 
    not SMC_I1(OUT1, A);
    nor	SMC_I2(ZN, OUT0, OUT1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI21BHDV4 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

 
    and SMC_I0(OUT0, B1, B2); 
    not SMC_I1(OUT1, A);
    nor	SMC_I2(ZN, OUT0, OUT1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI21BHDV6 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

 
    and SMC_I0(OUT0, B1, B2); 
    not SMC_I1(OUT1, A);
    nor	SMC_I2(ZN, OUT0, OUT1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI21BHDV8 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

 
    and SMC_I0(OUT0, B1, B2); 
    not SMC_I1(OUT1, A);
    nor	SMC_I2(ZN, OUT0, OUT1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI21BHDVL ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

 
    and SMC_I0(OUT0, B1, B2); 
    not SMC_I1(OUT1, A);
    nor	SMC_I2(ZN, OUT0, OUT1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI21HDV0 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

 
    and SMC_I0(OUT0, A1, A2); 
    nor SMC_I1(ZN, OUT0, B); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI21HDV1 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

 
    and SMC_I0(OUT0, A1, A2); 
    nor SMC_I1(ZN, OUT0, B); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI21HDV12 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

 
    and SMC_I0(OUT0, A1, A2); 
    nor SMC_I1(ZN, OUT0, B); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI21HDV2 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

 
    and SMC_I0(OUT0, A1, A2); 
    nor SMC_I1(ZN, OUT0, B); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI21HDV4 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

 
    and SMC_I0(OUT0, A1, A2); 
    nor SMC_I1(ZN, OUT0, B); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI21HDV6 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

 
    and SMC_I0(OUT0, A1, A2); 
    nor SMC_I1(ZN, OUT0, B); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI21HDV8 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

 
    and SMC_I0(OUT0, A1, A2); 
    nor SMC_I1(ZN, OUT0, B); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI21HDVL ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

 
    and SMC_I0(OUT0, A1, A2); 
    nor SMC_I1(ZN, OUT0, B); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI221HDV0 ( ZN, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output ZN;

   
  and I0(out0, A2, A1); 
  and I1(out1, B2, B1); 
  nor I2(ZN, C, out1, out0); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI221HDV1 ( ZN, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output ZN;

   
  and I0(out0, A2, A1); 
  and I1(out1, B2, B1); 
  nor I2(ZN, C, out1, out0); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI221HDV2 ( ZN, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output ZN;

   
  and I0(out0, A2, A1); 
  and I1(out1, B2, B1); 
  nor I2(ZN, C, out1, out0); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI221HDV4 ( ZN, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output ZN;

   
  and I0(out0, A2, A1); 
  and I1(out1, B2, B1); 
  nor I2(ZN, C, out1, out0); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI221HDVL ( ZN, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output ZN;

   
  and I0(out0, A2, A1); 
  and I1(out1, B2, B1); 
  nor I2(ZN, C, out1, out0); 
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI222HDV0 ( ZN, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output ZN;

    
  and I0(outA, A2, A1); 
  and I1(outB, B2, B1); 
  and I2(outC, C2, C1); 
  nor I3(ZN, outA, outB, outC); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI222HDV1 ( ZN, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output ZN;

    
  and I0(outA, A2, A1); 
  and I1(outB, B2, B1); 
  and I2(outC, C2, C1); 
  nor I3(ZN, outA, outB, outC); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI222HDV2 ( ZN, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output ZN;

    
  and I0(outA, A2, A1); 
  and I1(outB, B2, B1); 
  and I2(outC, C2, C1); 
  nor I3(ZN, outA, outB, outC); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI222HDV4 ( ZN, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output ZN;

    
  and I0(outA, A2, A1); 
  and I1(outB, B2, B1); 
  and I2(outC, C2, C1); 
  nor I3(ZN, outA, outB, outC); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI222HDVL ( ZN, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output ZN;

    
  and I0(outA, A2, A1); 
  and I1(outB, B2, B1); 
  and I2(outC, C2, C1); 
  nor I3(ZN, outA, outB, outC); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI22BBHDV0 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

  not I3(outA1, A1);
  not I4(outA2, A2);
  and I0(outA, outA2, outA1); 
  and I1(outB, B2, B1); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI22BBHDV1 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

  not I3(outA1, A1);
  not I4(outA2, A2);
  and I0(outA, outA2, outA1); 
  and I1(outB, B2, B1); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI22BBHDV2 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

  not I3(outA1, A1);
  not I4(outA2, A2);
  and I0(outA, outA2, outA1); 
  and I1(outB, B2, B1); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI22BBHDV4 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

  not I3(outA1, A1);
  not I4(outA2, A2);
  and I0(outA, outA2, outA1); 
  and I1(outB, B2, B1); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI22BBHDVL ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

  not I3(outA1, A1);
  not I4(outA2, A2);
  and I0(outA, outA2, outA1); 
  and I1(outB, B2, B1); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI22HDV0 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

 
  and I0(outA, A2, A1); 
  and I1(outB, B2, B1); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI22HDV1 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

 
  and I0(outA, A2, A1); 
  and I1(outB, B2, B1); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI22HDV2 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

 
  and I0(outA, A2, A1); 
  and I1(outB, B2, B1); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI22HDV4 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

 
  and I0(outA, A2, A1); 
  and I1(outB, B2, B1); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI22HDV8 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

 
  and I0(outA, A2, A1); 
  and I1(outB, B2, B1); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI22HDVL ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

 
  and I0(outA, A2, A1); 
  and I1(outB, B2, B1); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI2XB1HDV0 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

    not SMC_I3(OUT3,B2);
    and SMC_I0(OUT0, B1, OUT3); 
    nor	SMC_I2(ZN, OUT0, A); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI2XB1HDV1 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

    not SMC_I3(OUT3,B2);
    and SMC_I0(OUT0, B1, OUT3); 
    nor	SMC_I2(ZN, OUT0, A); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI2XB1HDV2 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

    not SMC_I3(OUT3,B2);
    and SMC_I0(OUT0, B1, OUT3); 
    nor	SMC_I2(ZN, OUT0, A); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI2XB1HDV4 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

    not SMC_I3(OUT3,B2);
    and SMC_I0(OUT0, B1, OUT3); 
    nor	SMC_I2(ZN, OUT0, A); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI2XB1HDV8 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

    not SMC_I3(OUT3,B2);
    and SMC_I0(OUT0, B1, OUT3); 
    nor	SMC_I2(ZN, OUT0, A); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI2XB1HDVL ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

    not SMC_I3(OUT3,B2);
    and SMC_I0(OUT0, B1, OUT3); 
    nor	SMC_I2(ZN, OUT0, A); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI31HDV0 ( ZN, A1, A2, A3, B); 
input A1, A2, A3, B;
output ZN;

 
  and I0(outA, A1, A2, A3); 
  nor I1(ZN, B, outA); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI31HDV1 ( ZN, A1, A2, A3, B); 
input A1, A2, A3, B;
output ZN;

 
  and I0(outA, A1, A2, A3); 
  nor I1(ZN, B, outA); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI31HDV2 ( ZN, A1, A2, A3, B); 
input A1, A2, A3, B;
output ZN;

 
  and I0(outA, A1, A2, A3); 
  nor I1(ZN, B, outA); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI31HDV4 ( ZN, A1, A2, A3, B); 
input A1, A2, A3, B;
output ZN;

 
  and I0(outA, A1, A2, A3); 
  nor I1(ZN, B, outA); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI31HDV8 ( ZN, A1, A2, A3, B); 
input A1, A2, A3, B;
output ZN;

 
  and I0(outA, A1, A2, A3); 
  nor I1(ZN, B, outA); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI31HDVL ( ZN, A1, A2, A3, B); 
input A1, A2, A3, B;
output ZN;

 
  and I0(outA, A1, A2, A3); 
  nor I1(ZN, B, outA); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI32HDV0 ( ZN, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output ZN;

 
  and I0(outA, A1, A2, A3); 
  and I1(outB, B1, B2); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI32HDV1 ( ZN, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output ZN;

 
  and I0(outA, A1, A2, A3); 
  and I1(outB, B1, B2); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI32HDV2 ( ZN, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output ZN;

 
  and I0(outA, A1, A2, A3); 
  and I1(outB, B1, B2); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI32HDV4 ( ZN, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output ZN;

 
  and I0(outA, A1, A2, A3); 
  and I1(outB, B1, B2); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI32HDVL ( ZN, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output ZN;

 
  and I0(outA, A1, A2, A3); 
  and I1(outB, B1, B2); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI33HDV0 ( ZN, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output ZN;

 
  and I0(outA, A1, A2, A3); 
  and I1(outB, B1, B2, B3); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI33HDV1 ( ZN, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output ZN;

 
  and I0(outA, A1, A2, A3); 
  and I1(outB, B1, B2, B3); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI33HDV2 ( ZN, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output ZN;

 
  and I0(outA, A1, A2, A3); 
  and I1(outB, B1, B2, B3); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI33HDV4 ( ZN, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output ZN;

 
  and I0(outA, A1, A2, A3); 
  and I1(outB, B1, B2, B3); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module AOI33HDVL ( ZN, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output ZN;

 
  and I0(outA, A1, A2, A3); 
  and I1(outB, B1, B2, B3); 
  nor I2(ZN, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BENCHDV0 ( A, S, X2, MI0, MI1, MI2); 
input MI0, MI1, MI2;
output A, S, X2;

	not SMC_I0( MI0_inv, MI0 ); 
	not SMC_I1( MI1_inv, MI1 ); 
	and SMC_I2( A_row1, MI0_inv, MI1_inv ); 
	or SMC_I3( A, A_row1, MI2 ); 
	and SMC_I4( S_row1, MI0, MI1 ); 
	not SMC_I5( MI2_inv, MI2 ); 
	or SMC_I6( S, S_row1, MI2_inv ); 
	and SMC_I7( X2_row1, MI0, MI1 ); 
	and SMC_I8( X2_row2, MI0_inv, MI1_inv ); 
	or SMC_I9( X2, X2_row1, X2_row2 ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc MI0 --> A
	 (MI0 => A) = (1.0,1.0);

	// arc MI1 --> A
	 (MI1 => A) = (1.0,1.0);

	if(MI0==1'b0 && MI1==1'b1)
	// arc MI2 --> A
	 (MI2 => A) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b0)
	// arc MI2 --> A
	 (MI2 => A) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b1)
	// arc MI2 --> A
	 (MI2 => A) = (1.0,1.0);

	// arc MI0 --> S
	 (MI0 => S) = (1.0,1.0);

	// arc MI1 --> S
	 (MI1 => S) = (1.0,1.0);

	if(MI0==1'b0 && MI1==1'b0)
	// arc MI2 --> S
	 (MI2 => S) = (1.0,1.0);

	if(MI0==1'b0 && MI1==1'b1)
	// arc MI2 --> S
	 (MI2 => S) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b0)
	// arc MI2 --> S
	 (MI2 => S) = (1.0,1.0);

	if(MI2==1'b0)
	// arc posedge MI0 --> (X2:MI0)
	 (posedge MI0 => (X2:MI0)) = (1.0,1.0);

	if(MI2==1'b0)
	// arc negedge MI0 --> (X2:MI0)
	 (negedge MI0 => (X2:MI0)) = (1.0,1.0);

	if(MI2==1'b1)
	// arc posedge MI0 --> (X2:MI0)
	 (posedge MI0 => (X2:MI0)) = (1.0,1.0);

	if(MI2==1'b1)
	// arc negedge MI0 --> (X2:MI0)
	 (negedge MI0 => (X2:MI0)) = (1.0,1.0);

	if(MI2==1'b0)
	// arc posedge MI1 --> (X2:MI1)
	 (posedge MI1 => (X2:MI1)) = (1.0,1.0);

	if(MI2==1'b0)
	// arc negedge MI1 --> (X2:MI1)
	 (negedge MI1 => (X2:MI1)) = (1.0,1.0);

	if(MI2==1'b1)
	// arc posedge MI1 --> (X2:MI1)
	 (posedge MI1 => (X2:MI1)) = (1.0,1.0);

	if(MI2==1'b1)
	// arc negedge MI1 --> (X2:MI1)
	 (negedge MI1 => (X2:MI1)) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BENCHDV1 ( A, S, X2, MI0, MI1, MI2); 
input MI0, MI1, MI2;
output A, S, X2;

	not SMC_I0( MI0_inv, MI0 ); 
	not SMC_I1( MI1_inv, MI1 ); 
	and SMC_I2( A_row1, MI0_inv, MI1_inv ); 
	or SMC_I3( A, A_row1, MI2 ); 
	and SMC_I4( S_row1, MI0, MI1 ); 
	not SMC_I5( MI2_inv, MI2 ); 
	or SMC_I6( S, S_row1, MI2_inv ); 
	and SMC_I7( X2_row1, MI0, MI1 ); 
	and SMC_I8( X2_row2, MI0_inv, MI1_inv ); 
	or SMC_I9( X2, X2_row1, X2_row2 ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc MI0 --> A
	 (MI0 => A) = (1.0,1.0);

	// arc MI1 --> A
	 (MI1 => A) = (1.0,1.0);

	if(MI0==1'b0 && MI1==1'b1)
	// arc MI2 --> A
	 (MI2 => A) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b0)
	// arc MI2 --> A
	 (MI2 => A) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b1)
	// arc MI2 --> A
	 (MI2 => A) = (1.0,1.0);

	// arc MI0 --> S
	 (MI0 => S) = (1.0,1.0);

	// arc MI1 --> S
	 (MI1 => S) = (1.0,1.0);

	if(MI0==1'b0 && MI1==1'b0)
	// arc MI2 --> S
	 (MI2 => S) = (1.0,1.0);

	if(MI0==1'b0 && MI1==1'b1)
	// arc MI2 --> S
	 (MI2 => S) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b0)
	// arc MI2 --> S
	 (MI2 => S) = (1.0,1.0);

	if(MI2==1'b0)
	// arc posedge MI0 --> (X2:MI0)
	 (posedge MI0 => (X2:MI0)) = (1.0,1.0);

	if(MI2==1'b0)
	// arc negedge MI0 --> (X2:MI0)
	 (negedge MI0 => (X2:MI0)) = (1.0,1.0);

	if(MI2==1'b1)
	// arc posedge MI0 --> (X2:MI0)
	 (posedge MI0 => (X2:MI0)) = (1.0,1.0);

	if(MI2==1'b1)
	// arc negedge MI0 --> (X2:MI0)
	 (negedge MI0 => (X2:MI0)) = (1.0,1.0);

	if(MI2==1'b0)
	// arc posedge MI1 --> (X2:MI1)
	 (posedge MI1 => (X2:MI1)) = (1.0,1.0);

	if(MI2==1'b0)
	// arc negedge MI1 --> (X2:MI1)
	 (negedge MI1 => (X2:MI1)) = (1.0,1.0);

	if(MI2==1'b1)
	// arc posedge MI1 --> (X2:MI1)
	 (posedge MI1 => (X2:MI1)) = (1.0,1.0);

	if(MI2==1'b1)
	// arc negedge MI1 --> (X2:MI1)
	 (negedge MI1 => (X2:MI1)) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BENCHDV2 ( A, S, X2, MI0, MI1, MI2); 
input MI0, MI1, MI2;
output A, S, X2;

	not SMC_I0( MI0_inv, MI0 ); 
	not SMC_I1( MI1_inv, MI1 ); 
	and SMC_I2( A_row1, MI0_inv, MI1_inv ); 
	or SMC_I3( A, A_row1, MI2 ); 
	and SMC_I4( S_row1, MI0, MI1 ); 
	not SMC_I5( MI2_inv, MI2 ); 
	or SMC_I6( S, S_row1, MI2_inv ); 
	and SMC_I7( X2_row1, MI0, MI1 ); 
	and SMC_I8( X2_row2, MI0_inv, MI1_inv ); 
	or SMC_I9( X2, X2_row1, X2_row2 ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc MI0 --> A
	 (MI0 => A) = (1.0,1.0);

	// arc MI1 --> A
	 (MI1 => A) = (1.0,1.0);

	if(MI0==1'b0 && MI1==1'b1)
	// arc MI2 --> A
	 (MI2 => A) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b0)
	// arc MI2 --> A
	 (MI2 => A) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b1)
	// arc MI2 --> A
	 (MI2 => A) = (1.0,1.0);

	// arc MI0 --> S
	 (MI0 => S) = (1.0,1.0);

	// arc MI1 --> S
	 (MI1 => S) = (1.0,1.0);

	if(MI0==1'b0 && MI1==1'b0)
	// arc MI2 --> S
	 (MI2 => S) = (1.0,1.0);

	if(MI0==1'b0 && MI1==1'b1)
	// arc MI2 --> S
	 (MI2 => S) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b0)
	// arc MI2 --> S
	 (MI2 => S) = (1.0,1.0);

	if(MI2==1'b0)
	// arc posedge MI0 --> (X2:MI0)
	 (posedge MI0 => (X2:MI0)) = (1.0,1.0);

	if(MI2==1'b0)
	// arc negedge MI0 --> (X2:MI0)
	 (negedge MI0 => (X2:MI0)) = (1.0,1.0);

	if(MI2==1'b1)
	// arc posedge MI0 --> (X2:MI0)
	 (posedge MI0 => (X2:MI0)) = (1.0,1.0);

	if(MI2==1'b1)
	// arc negedge MI0 --> (X2:MI0)
	 (negedge MI0 => (X2:MI0)) = (1.0,1.0);

	if(MI2==1'b0)
	// arc posedge MI1 --> (X2:MI1)
	 (posedge MI1 => (X2:MI1)) = (1.0,1.0);

	if(MI2==1'b0)
	// arc negedge MI1 --> (X2:MI1)
	 (negedge MI1 => (X2:MI1)) = (1.0,1.0);

	if(MI2==1'b1)
	// arc posedge MI1 --> (X2:MI1)
	 (posedge MI1 => (X2:MI1)) = (1.0,1.0);

	if(MI2==1'b1)
	// arc negedge MI1 --> (X2:MI1)
	 (negedge MI1 => (X2:MI1)) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BENCHDV4 ( A, S, X2, MI0, MI1, MI2); 
input MI0, MI1, MI2;
output A, S, X2;

	not SMC_I0( MI0_inv, MI0 ); 
	not SMC_I1( MI1_inv, MI1 ); 
	and SMC_I2( A_row1, MI0_inv, MI1_inv ); 
	or SMC_I3( A, A_row1, MI2 ); 
	and SMC_I4( S_row1, MI0, MI1 ); 
	not SMC_I5( MI2_inv, MI2 ); 
	or SMC_I6( S, S_row1, MI2_inv ); 
	and SMC_I7( X2_row1, MI0, MI1 ); 
	and SMC_I8( X2_row2, MI0_inv, MI1_inv ); 
	or SMC_I9( X2, X2_row1, X2_row2 ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc MI0 --> A
	 (MI0 => A) = (1.0,1.0);

	// arc MI1 --> A
	 (MI1 => A) = (1.0,1.0);

	if(MI0==1'b0 && MI1==1'b1)
	// arc MI2 --> A
	 (MI2 => A) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b0)
	// arc MI2 --> A
	 (MI2 => A) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b1)
	// arc MI2 --> A
	 (MI2 => A) = (1.0,1.0);

	// arc MI0 --> S
	 (MI0 => S) = (1.0,1.0);

	// arc MI1 --> S
	 (MI1 => S) = (1.0,1.0);

	if(MI0==1'b0 && MI1==1'b0)
	// arc MI2 --> S
	 (MI2 => S) = (1.0,1.0);

	if(MI0==1'b0 && MI1==1'b1)
	// arc MI2 --> S
	 (MI2 => S) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b0)
	// arc MI2 --> S
	 (MI2 => S) = (1.0,1.0);

	if(MI2==1'b0)
	// arc posedge MI0 --> (X2:MI0)
	 (posedge MI0 => (X2:MI0)) = (1.0,1.0);

	if(MI2==1'b0)
	// arc negedge MI0 --> (X2:MI0)
	 (negedge MI0 => (X2:MI0)) = (1.0,1.0);

	if(MI2==1'b1)
	// arc posedge MI0 --> (X2:MI0)
	 (posedge MI0 => (X2:MI0)) = (1.0,1.0);

	if(MI2==1'b1)
	// arc negedge MI0 --> (X2:MI0)
	 (negedge MI0 => (X2:MI0)) = (1.0,1.0);

	if(MI2==1'b0)
	// arc posedge MI1 --> (X2:MI1)
	 (posedge MI1 => (X2:MI1)) = (1.0,1.0);

	if(MI2==1'b0)
	// arc negedge MI1 --> (X2:MI1)
	 (negedge MI1 => (X2:MI1)) = (1.0,1.0);

	if(MI2==1'b1)
	// arc posedge MI1 --> (X2:MI1)
	 (posedge MI1 => (X2:MI1)) = (1.0,1.0);

	if(MI2==1'b1)
	// arc negedge MI1 --> (X2:MI1)
	 (negedge MI1 => (X2:MI1)) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BMUXNHDV0 ( A, S, X2, MI0, MI1, PPN); 
input MI0, MI1, A, S, X2;
output PPN;

	not SMC_I0( A_inv, A ); 
	and SMC_I1( OUT0, MI0, A_inv ); 
        not SMC_I2( MI0_inv, MI0 );
        not SMC_I3( S_inv, S );
	and SMC_I4( OUT1, MI0_inv, S_inv );
        or  SMC_I5( OUT2, OUT0, OUT1);
	and SMC_I6( OUT3, OUT2, X2);
	and SMC_I7( OUT4, MI1, A_inv ); 
        not SMC_I8( MI1_inv, MI1 );
	and SMC_I9( OUT5, MI1_inv, S_inv );
        or  SMC_I10( OUT6, OUT4, OUT5);
	not SMC_I11( X2_inv, X2 );
	and SMC_I12( OUT7, OUT6, X2_inv);
	nor SMC_I13( PPN, OUT3, OUT7 );

   `ifdef functional  //  functional //

   `else




   specify

	if(MI0==1'b0 && MI1==1'b1 && S==1'b0 && X2==1'b0)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b0 && MI1==1'b1 && S==1'b1 && X2==1'b0)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b0 && S==1'b0 && X2==1'b1)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b0 && S==1'b1 && X2==1'b1)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b1 && S==1'b0 && X2==1'b0)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b1 && S==1'b0 && X2==1'b1)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b1 && S==1'b1 && X2==1'b0)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b1 && S==1'b1 && X2==1'b1)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI1==1'b0)
	// arc posedge MI0 --> (PPN:MI0)
	 (posedge MI0 => (PPN:MI0)) = (1.0,1.0);

	if(MI1==1'b0)
	// arc negedge MI0 --> (PPN:MI0)
	 (negedge MI0 => (PPN:MI0)) = (1.0,1.0);

	if(MI1==1'b1)
	// arc posedge MI0 --> (PPN:MI0)
	 (posedge MI0 => (PPN:MI0)) = (1.0,1.0);

	if(MI1==1'b1)
	// arc negedge MI0 --> (PPN:MI0)
	 (negedge MI0 => (PPN:MI0)) = (1.0,1.0);

	if(MI0==1'b0)
	// arc posedge MI1 --> (PPN:MI1)
	 (posedge MI1 => (PPN:MI1)) = (1.0,1.0);

	if(MI0==1'b0)
	// arc negedge MI1 --> (PPN:MI1)
	 (negedge MI1 => (PPN:MI1)) = (1.0,1.0);

	if(MI0==1'b1)
	// arc posedge MI1 --> (PPN:MI1)
	 (posedge MI1 => (PPN:MI1)) = (1.0,1.0);

	if(MI0==1'b1)
	// arc negedge MI1 --> (PPN:MI1)
	 (negedge MI1 => (PPN:MI1)) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b0 && MI1==1'b0 && X2==1'b0)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b0 && MI1==1'b0 && X2==1'b1)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b0 && MI1==1'b1 && X2==1'b1)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b1 && MI1==1'b0 && X2==1'b0)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b0 && MI1==1'b0 && X2==1'b0)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b0 && MI1==1'b0 && X2==1'b1)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b0 && MI1==1'b1 && X2==1'b1)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b1 && MI1==1'b0 && X2==1'b0)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b1 && MI1==1'b0 && S==1'b1)
	// arc X2 --> PPN
	 (X2 => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b0 && MI1==1'b1 && S==1'b0)
	// arc X2 --> PPN
	 (X2 => PPN) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b0 && MI1==1'b1 && S==1'b1)
	// arc X2 --> PPN
	 (X2 => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b1 && MI1==1'b0 && S==1'b0)
	// arc X2 --> PPN
	 (X2 => PPN) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BMUXNHDV1 ( A, S, X2, MI0, MI1, PPN); 
input MI0, MI1, A, S, X2;
output PPN;

	not SMC_I0( A_inv, A ); 
	and SMC_I1( OUT0, MI0, A_inv ); 
        not SMC_I2( MI0_inv, MI0 );
        not SMC_I3( S_inv, S );
	and SMC_I4( OUT1, MI0_inv, S_inv );
        or  SMC_I5( OUT2, OUT0, OUT1);
	and SMC_I6( OUT3, OUT2, X2);
	and SMC_I7( OUT4, MI1, A_inv ); 
        not SMC_I8( MI1_inv, MI1 );
	and SMC_I9( OUT5, MI1_inv, S_inv );
        or  SMC_I10( OUT6, OUT4, OUT5);
	not SMC_I11( X2_inv, X2 );
	and SMC_I12( OUT7, OUT6, X2_inv);
	nor SMC_I13( PPN, OUT3, OUT7 );

   `ifdef functional  //  functional //

   `else




   specify

	if(MI0==1'b0 && MI1==1'b1 && S==1'b0 && X2==1'b0)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b0 && MI1==1'b1 && S==1'b1 && X2==1'b0)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b0 && S==1'b0 && X2==1'b1)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b0 && S==1'b1 && X2==1'b1)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b1 && S==1'b0 && X2==1'b0)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b1 && S==1'b0 && X2==1'b1)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b1 && S==1'b1 && X2==1'b0)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b1 && S==1'b1 && X2==1'b1)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI1==1'b0)
	// arc posedge MI0 --> (PPN:MI0)
	 (posedge MI0 => (PPN:MI0)) = (1.0,1.0);

	if(MI1==1'b0)
	// arc negedge MI0 --> (PPN:MI0)
	 (negedge MI0 => (PPN:MI0)) = (1.0,1.0);

	if(MI1==1'b1)
	// arc posedge MI0 --> (PPN:MI0)
	 (posedge MI0 => (PPN:MI0)) = (1.0,1.0);

	if(MI1==1'b1)
	// arc negedge MI0 --> (PPN:MI0)
	 (negedge MI0 => (PPN:MI0)) = (1.0,1.0);

	if(MI0==1'b0)
	// arc posedge MI1 --> (PPN:MI1)
	 (posedge MI1 => (PPN:MI1)) = (1.0,1.0);

	if(MI0==1'b0)
	// arc negedge MI1 --> (PPN:MI1)
	 (negedge MI1 => (PPN:MI1)) = (1.0,1.0);

	if(MI0==1'b1)
	// arc posedge MI1 --> (PPN:MI1)
	 (posedge MI1 => (PPN:MI1)) = (1.0,1.0);

	if(MI0==1'b1)
	// arc negedge MI1 --> (PPN:MI1)
	 (negedge MI1 => (PPN:MI1)) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b0 && MI1==1'b0 && X2==1'b0)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b0 && MI1==1'b0 && X2==1'b1)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b0 && MI1==1'b1 && X2==1'b1)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b1 && MI1==1'b0 && X2==1'b0)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b0 && MI1==1'b0 && X2==1'b0)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b0 && MI1==1'b0 && X2==1'b1)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b0 && MI1==1'b1 && X2==1'b1)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b1 && MI1==1'b0 && X2==1'b0)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b1 && MI1==1'b0 && S==1'b1)
	// arc X2 --> PPN
	 (X2 => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b0 && MI1==1'b1 && S==1'b0)
	// arc X2 --> PPN
	 (X2 => PPN) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b0 && MI1==1'b1 && S==1'b1)
	// arc X2 --> PPN
	 (X2 => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b1 && MI1==1'b0 && S==1'b0)
	// arc X2 --> PPN
	 (X2 => PPN) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BMUXNHDV2 ( A, S, X2, MI0, MI1, PPN); 
input MI0, MI1, A, S, X2;
output PPN;

	not SMC_I0( A_inv, A ); 
	and SMC_I1( OUT0, MI0, A_inv ); 
        not SMC_I2( MI0_inv, MI0 );
        not SMC_I3( S_inv, S );
	and SMC_I4( OUT1, MI0_inv, S_inv );
        or  SMC_I5( OUT2, OUT0, OUT1);
	and SMC_I6( OUT3, OUT2, X2);
	and SMC_I7( OUT4, MI1, A_inv ); 
        not SMC_I8( MI1_inv, MI1 );
	and SMC_I9( OUT5, MI1_inv, S_inv );
        or  SMC_I10( OUT6, OUT4, OUT5);
	not SMC_I11( X2_inv, X2 );
	and SMC_I12( OUT7, OUT6, X2_inv);
	nor SMC_I13( PPN, OUT3, OUT7 );

   `ifdef functional  //  functional //

   `else




   specify

	if(MI0==1'b0 && MI1==1'b1 && S==1'b0 && X2==1'b0)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b0 && MI1==1'b1 && S==1'b1 && X2==1'b0)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b0 && S==1'b0 && X2==1'b1)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b0 && S==1'b1 && X2==1'b1)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b1 && S==1'b0 && X2==1'b0)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b1 && S==1'b0 && X2==1'b1)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b1 && S==1'b1 && X2==1'b0)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b1 && S==1'b1 && X2==1'b1)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI1==1'b0)
	// arc posedge MI0 --> (PPN:MI0)
	 (posedge MI0 => (PPN:MI0)) = (1.0,1.0);

	if(MI1==1'b0)
	// arc negedge MI0 --> (PPN:MI0)
	 (negedge MI0 => (PPN:MI0)) = (1.0,1.0);

	if(MI1==1'b1)
	// arc posedge MI0 --> (PPN:MI0)
	 (posedge MI0 => (PPN:MI0)) = (1.0,1.0);

	if(MI1==1'b1)
	// arc negedge MI0 --> (PPN:MI0)
	 (negedge MI0 => (PPN:MI0)) = (1.0,1.0);

	if(MI0==1'b0)
	// arc posedge MI1 --> (PPN:MI1)
	 (posedge MI1 => (PPN:MI1)) = (1.0,1.0);

	if(MI0==1'b0)
	// arc negedge MI1 --> (PPN:MI1)
	 (negedge MI1 => (PPN:MI1)) = (1.0,1.0);

	if(MI0==1'b1)
	// arc posedge MI1 --> (PPN:MI1)
	 (posedge MI1 => (PPN:MI1)) = (1.0,1.0);

	if(MI0==1'b1)
	// arc negedge MI1 --> (PPN:MI1)
	 (negedge MI1 => (PPN:MI1)) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b0 && MI1==1'b0 && X2==1'b0)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b0 && MI1==1'b0 && X2==1'b1)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b0 && MI1==1'b1 && X2==1'b1)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b1 && MI1==1'b0 && X2==1'b0)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b0 && MI1==1'b0 && X2==1'b0)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b0 && MI1==1'b0 && X2==1'b1)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b0 && MI1==1'b1 && X2==1'b1)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b1 && MI1==1'b0 && X2==1'b0)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b1 && MI1==1'b0 && S==1'b1)
	// arc X2 --> PPN
	 (X2 => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b0 && MI1==1'b1 && S==1'b0)
	// arc X2 --> PPN
	 (X2 => PPN) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b0 && MI1==1'b1 && S==1'b1)
	// arc X2 --> PPN
	 (X2 => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b1 && MI1==1'b0 && S==1'b0)
	// arc X2 --> PPN
	 (X2 => PPN) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BMUXNHDV4 ( A, S, X2, MI0, MI1, PPN); 
input MI0, MI1, A, S, X2;
output PPN;

	not SMC_I0( A_inv, A ); 
	and SMC_I1( OUT0, MI0, A_inv ); 
        not SMC_I2( MI0_inv, MI0 );
        not SMC_I3( S_inv, S );
	and SMC_I4( OUT1, MI0_inv, S_inv );
        or  SMC_I5( OUT2, OUT0, OUT1);
	and SMC_I6( OUT3, OUT2, X2);
	and SMC_I7( OUT4, MI1, A_inv ); 
        not SMC_I8( MI1_inv, MI1 );
	and SMC_I9( OUT5, MI1_inv, S_inv );
        or  SMC_I10( OUT6, OUT4, OUT5);
	not SMC_I11( X2_inv, X2 );
	and SMC_I12( OUT7, OUT6, X2_inv);
	nor SMC_I13( PPN, OUT3, OUT7 );

   `ifdef functional  //  functional //

   `else




   specify

	if(MI0==1'b0 && MI1==1'b1 && S==1'b0 && X2==1'b0)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b0 && MI1==1'b1 && S==1'b1 && X2==1'b0)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b0 && S==1'b0 && X2==1'b1)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b0 && S==1'b1 && X2==1'b1)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b1 && S==1'b0 && X2==1'b0)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b1 && S==1'b0 && X2==1'b1)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b1 && S==1'b1 && X2==1'b0)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI0==1'b1 && MI1==1'b1 && S==1'b1 && X2==1'b1)
	// arc A --> PPN
	 (A => PPN) = (1.0,1.0);

	if(MI1==1'b0)
	// arc posedge MI0 --> (PPN:MI0)
	 (posedge MI0 => (PPN:MI0)) = (1.0,1.0);

	if(MI1==1'b0)
	// arc negedge MI0 --> (PPN:MI0)
	 (negedge MI0 => (PPN:MI0)) = (1.0,1.0);

	if(MI1==1'b1)
	// arc posedge MI0 --> (PPN:MI0)
	 (posedge MI0 => (PPN:MI0)) = (1.0,1.0);

	if(MI1==1'b1)
	// arc negedge MI0 --> (PPN:MI0)
	 (negedge MI0 => (PPN:MI0)) = (1.0,1.0);

	if(MI0==1'b0)
	// arc posedge MI1 --> (PPN:MI1)
	 (posedge MI1 => (PPN:MI1)) = (1.0,1.0);

	if(MI0==1'b0)
	// arc negedge MI1 --> (PPN:MI1)
	 (negedge MI1 => (PPN:MI1)) = (1.0,1.0);

	if(MI0==1'b1)
	// arc posedge MI1 --> (PPN:MI1)
	 (posedge MI1 => (PPN:MI1)) = (1.0,1.0);

	if(MI0==1'b1)
	// arc negedge MI1 --> (PPN:MI1)
	 (negedge MI1 => (PPN:MI1)) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b0 && MI1==1'b0 && X2==1'b0)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b0 && MI1==1'b0 && X2==1'b1)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b0 && MI1==1'b1 && X2==1'b1)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b1 && MI1==1'b0 && X2==1'b0)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b0 && MI1==1'b0 && X2==1'b0)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b0 && MI1==1'b0 && X2==1'b1)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b0 && MI1==1'b1 && X2==1'b1)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b1 && MI1==1'b0 && X2==1'b0)
	// arc S --> PPN
	 (S => PPN) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b1 && MI1==1'b0 && S==1'b1)
	// arc X2 --> PPN
	 (X2 => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b0 && MI1==1'b1 && S==1'b0)
	// arc X2 --> PPN
	 (X2 => PPN) = (1.0,1.0);

	if(A==1'b0 && MI0==1'b0 && MI1==1'b1 && S==1'b1)
	// arc X2 --> PPN
	 (X2 => PPN) = (1.0,1.0);

	if(A==1'b1 && MI0==1'b1 && MI1==1'b0 && S==1'b0)
	// arc X2 --> PPN
	 (X2 => PPN) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFHDV0 ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFHDV1 ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFHDV10 ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFHDV12 ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFHDV14 ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFHDV16 ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFHDV2 ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFHDV20 ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFHDV24 ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFHDV3 ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFHDV32 ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFHDV4 ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFHDV6 ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFHDV8 ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module BUFHDVL ( Z, I); 
input I;
output Z;

 
    buf I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module BUSHOLDHD ( Z ); 
inout Z;
wire io_wire;

  buf(weak0,weak1) I0(Z, io_wire);
  buf              I1(io_wire, Z);

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKAND2HDV0 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    and SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKAND2HDV1 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    and SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKAND2HDV12 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    and SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKAND2HDV2 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    and SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKAND2HDV4 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    and SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKAND2HDV8 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    and SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKBUFHDV0 ( Z, I); 
input I;
output Z;

 
    buf SMC_I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKBUFHDV1 ( Z, I); 
input I;
output Z;

 
    buf SMC_I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKBUFHDV12 ( Z, I); 
input I;
output Z;

 
    buf SMC_I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKBUFHDV16 ( Z, I); 
input I;
output Z;

 
    buf SMC_I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKBUFHDV2 ( Z, I); 
input I;
output Z;

 
    buf SMC_I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKBUFHDV20 ( Z, I); 
input I;
output Z;

 
    buf SMC_I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKBUFHDV24 ( Z, I); 
input I;
output Z;

 
    buf SMC_I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKBUFHDV3 ( Z, I); 
input I;
output Z;

 
    buf SMC_I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKBUFHDV4 ( Z, I); 
input I;
output Z;

 
    buf SMC_I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKBUFHDV6 ( Z, I); 
input I;
output Z;

 
    buf SMC_I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKBUFHDV8 ( Z, I); 
input I;
output Z;

 
    buf SMC_I0(Z, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKINHDV0 ( ZN, I); 
input I;
output ZN;

 
    not SMC_I0 (ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKINHDV1 ( ZN, I); 
input I;
output ZN;

 
    not SMC_I0 (ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKINHDV12 ( ZN, I); 
input I;
output ZN;

 
    not SMC_I0 (ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKINHDV16 ( ZN, I); 
input I;
output ZN;

 
    not SMC_I0 (ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKINHDV2 ( ZN, I); 
input I;
output ZN;

 
    not SMC_I0 (ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKINHDV20 ( ZN, I); 
input I;
output ZN;

 
    not SMC_I0 (ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKINHDV24 ( ZN, I); 
input I;
output ZN;

 
    not SMC_I0 (ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKINHDV3 ( ZN, I); 
input I;
output ZN;

 
    not SMC_I0 (ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKINHDV4 ( ZN, I); 
input I;
output ZN;

 
    not SMC_I0 (ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKINHDV6 ( ZN, I); 
input I;
output ZN;

 
    not SMC_I0 (ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKINHDV8 ( ZN, I); 
input I;
output ZN;

 
    not SMC_I0 (ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKINHDVL ( ZN, I); 
input I;
output ZN;

 
    not SMC_I0 (ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLAHAQHDV0 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE; 
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I2 (xE, E); 
  not      I3 (nclk, CK); 
  udp_tlat I4 (n1, xE, nclk, xRN, xSN, NOTIFIER); 
  not      I5 (cond0, n1); 
  not      I6 (nTE, TE); 
  and      I7 (n0, nTE, cond0); 
  or       I8 (Q, n0, clk); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
   specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(posedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);


	// mpw CK_lh 
	$width(posedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
   endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLAHAQHDV1 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE; 
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I2 (xE, E); 
  not      I3 (nclk, CK); 
  udp_tlat I4 (n1, xE, nclk, xRN, xSN, NOTIFIER); 
  not      I5 (cond0, n1); 
  not      I6 (nTE, TE); 
  and      I7 (n0, nTE, cond0); 
  or       I8 (Q, n0, clk); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
   specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(posedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);


	// mpw CK_lh 
	$width(posedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
   endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLAHAQHDV2 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE; 
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I2 (xE, E); 
  not      I3 (nclk, CK); 
  udp_tlat I4 (n1, xE, nclk, xRN, xSN, NOTIFIER); 
  not      I5 (cond0, n1); 
  not      I6 (nTE, TE); 
  and      I7 (n0, nTE, cond0); 
  or       I8 (Q, n0, clk); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
   specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(posedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);


	// mpw CK_lh 
	$width(posedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
   endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLAHAQHDV3 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE; 
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I2 (xE, E); 
  not      I3 (nclk, CK); 
  udp_tlat I4 (n1, xE, nclk, xRN, xSN, NOTIFIER); 
  not      I5 (cond0, n1); 
  not      I6 (nTE, TE); 
  and      I7 (n0, nTE, cond0); 
  or       I8 (Q, n0, clk); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
   specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(posedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);


	// mpw CK_lh 
	$width(posedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
   endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLAHAQHDV4 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE; 
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I2 (xE, E); 
  not      I3 (nclk, CK); 
  udp_tlat I4 (n1, xE, nclk, xRN, xSN, NOTIFIER); 
  not      I5 (cond0, n1); 
  not      I6 (nTE, TE); 
  and      I7 (n0, nTE, cond0); 
  or       I8 (Q, n0, clk); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
   specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(posedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);


	// mpw CK_lh 
	$width(posedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
   endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLAHAQHDV6 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE; 
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I2 (xE, E); 
  not      I3 (nclk, CK); 
  udp_tlat I4 (n1, xE, nclk, xRN, xSN, NOTIFIER); 
  not      I5 (cond0, n1); 
  not      I6 (nTE, TE); 
  and      I7 (n0, nTE, cond0); 
  or       I8 (Q, n0, clk); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
   specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(posedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);


	// mpw CK_lh 
	$width(posedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
   endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLAHAQHDV8 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE; 
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I2 (xE, E); 
  not      I3 (nclk, CK); 
  udp_tlat I4 (n1, xE, nclk, xRN, xSN, NOTIFIER); 
  not      I5 (cond0, n1); 
  not      I6 (nTE, TE); 
  and      I7 (n0, nTE, cond0); 
  or       I8 (Q, n0, clk); 
  `ifdef functional // functional // 
 
  `else // functional // 
 
   specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(posedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);


	// mpw CK_lh 
	$width(posedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
   endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLAHQHDV0 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I1 (xTE, TE); 
  buf      I2 (xE, E); 
  not      I3 (nclk, CK); 
  or       I4 (n0, xE, xTE); 
  udp_tlat I5 (n1, n0, nclk, xRN, xSN, NOTIFIER); 
  not      I6 (cond0, n1); 
  or       I7 (Q, cond0, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q 
	 (posedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLAHQHDV1 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I1 (xTE, TE); 
  buf      I2 (xE, E); 
  not      I3 (nclk, CK); 
  or       I4 (n0, xE, xTE); 
  udp_tlat I5 (n1, n0, nclk, xRN, xSN, NOTIFIER); 
  not      I6 (cond0, n1); 
  or       I7 (Q, cond0, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q 
	 (posedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLAHQHDV2 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I1 (xTE, TE); 
  buf      I2 (xE, E); 
  not      I3 (nclk, CK); 
  or       I4 (n0, xE, xTE); 
  udp_tlat I5 (n1, n0, nclk, xRN, xSN, NOTIFIER); 
  not      I6 (cond0, n1); 
  or       I7 (Q, cond0, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q 
	 (posedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLAHQHDV3 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I1 (xTE, TE); 
  buf      I2 (xE, E); 
  not      I3 (nclk, CK); 
  or       I4 (n0, xE, xTE); 
  udp_tlat I5 (n1, n0, nclk, xRN, xSN, NOTIFIER); 
  not      I6 (cond0, n1); 
  or       I7 (Q, cond0, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q 
	 (posedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLAHQHDV4 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I1 (xTE, TE); 
  buf      I2 (xE, E); 
  not      I3 (nclk, CK); 
  or       I4 (n0, xE, xTE); 
  udp_tlat I5 (n1, n0, nclk, xRN, xSN, NOTIFIER); 
  not      I6 (cond0, n1); 
  or       I7 (Q, cond0, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q 
	 (posedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLAHQHDV6 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I1 (xTE, TE); 
  buf      I2 (xE, E); 
  not      I3 (nclk, CK); 
  or       I4 (n0, xE, xTE); 
  udp_tlat I5 (n1, n0, nclk, xRN, xSN, NOTIFIER); 
  not      I6 (cond0, n1); 
  or       I7 (Q, cond0, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q 
	 (posedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLAHQHDV8 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I1 (xTE, TE); 
  buf      I2 (xE, E); 
  not      I3 (nclk, CK); 
  or       I4 (n0, xE, xTE); 
  udp_tlat I5 (n1, n0, nclk, xRN, xSN, NOTIFIER); 
  not      I6 (cond0, n1); 
  or       I7 (Q, cond0, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q 
	 (posedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANAQHDV0 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I1 (xTE, TE); 
  buf      I2 (xE, E); 
  udp_tlat I3 (n1, xE, clk, xRN, xSN, NOTIFIER); 
  or       I4 (n0, n1, xTE); 
  and      I5 (Q, n0, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(negedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);


	// mpw CK_hl 
	$width(negedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
 
   endspecify 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANAQHDV1 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I1 (xTE, TE); 
  buf      I2 (xE, E); 
  udp_tlat I3 (n1, xE, clk, xRN, xSN, NOTIFIER); 
  or       I4 (n0, n1, xTE); 
  and      I5 (Q, n0, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(negedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);


	// mpw CK_hl 
	$width(negedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
 
   endspecify 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANAQHDV2 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I1 (xTE, TE); 
  buf      I2 (xE, E); 
  udp_tlat I3 (n1, xE, clk, xRN, xSN, NOTIFIER); 
  or       I4 (n0, n1, xTE); 
  and      I5 (Q, n0, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(negedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);


	// mpw CK_hl 
	$width(negedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
 
   endspecify 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANAQHDV3 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I1 (xTE, TE); 
  buf      I2 (xE, E); 
  udp_tlat I3 (n1, xE, clk, xRN, xSN, NOTIFIER); 
  or       I4 (n0, n1, xTE); 
  and      I5 (Q, n0, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(negedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);


	// mpw CK_hl 
	$width(negedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
 
   endspecify 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANAQHDV4 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I1 (xTE, TE); 
  buf      I2 (xE, E); 
  udp_tlat I3 (n1, xE, clk, xRN, xSN, NOTIFIER); 
  or       I4 (n0, n1, xTE); 
  and      I5 (Q, n0, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(negedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);


	// mpw CK_hl 
	$width(negedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
 
   endspecify 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANAQHDV6 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I1 (xTE, TE); 
  buf      I2 (xE, E); 
  udp_tlat I3 (n1, xE, clk, xRN, xSN, NOTIFIER); 
  or       I4 (n0, n1, xTE); 
  and      I5 (Q, n0, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(negedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);


	// mpw CK_hl 
	$width(negedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
 
   endspecify 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANAQHDV8 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK); 
  buf      I1 (xTE, TE); 
  buf      I2 (xE, E); 
  udp_tlat I3 (n1, xE, clk, xRN, xSN, NOTIFIER); 
  or       I4 (n0, n1, xTE); 
  and      I5 (Q, n0, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(negedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);


	// mpw CK_hl 
	$width(negedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
 
   endspecify 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANQHDV0 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK);   
  buf      I1 (xTE, TE);   
  buf      I2 (xE, E);   
  or       I3 (n0, xE, xTE); 
  udp_tlat I4 (n1, n0, clk, xRN, xSN, NOTIFIER); 
  and      I5 (Q, n1, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q
         (negedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
        endspecify 
       `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANQHDV1 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK);   
  buf      I1 (xTE, TE);   
  buf      I2 (xE, E);   
  or       I3 (n0, xE, xTE); 
  udp_tlat I4 (n1, n0, clk, xRN, xSN, NOTIFIER); 
  and      I5 (Q, n1, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q
         (negedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
        endspecify 
       `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANQHDV12 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK);   
  buf      I1 (xTE, TE);   
  buf      I2 (xE, E);   
  or       I3 (n0, xE, xTE); 
  udp_tlat I4 (n1, n0, clk, xRN, xSN, NOTIFIER); 
  and      I5 (Q, n1, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q
         (negedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
        endspecify 
       `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANQHDV16 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK);   
  buf      I1 (xTE, TE);   
  buf      I2 (xE, E);   
  or       I3 (n0, xE, xTE); 
  udp_tlat I4 (n1, n0, clk, xRN, xSN, NOTIFIER); 
  and      I5 (Q, n1, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q
         (negedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
        endspecify 
       `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANQHDV2 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK);   
  buf      I1 (xTE, TE);   
  buf      I2 (xE, E);   
  or       I3 (n0, xE, xTE); 
  udp_tlat I4 (n1, n0, clk, xRN, xSN, NOTIFIER); 
  and      I5 (Q, n1, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q
         (negedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
        endspecify 
       `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANQHDV20 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK);   
  buf      I1 (xTE, TE);   
  buf      I2 (xE, E);   
  or       I3 (n0, xE, xTE); 
  udp_tlat I4 (n1, n0, clk, xRN, xSN, NOTIFIER); 
  and      I5 (Q, n1, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q
         (negedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
        endspecify 
       `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANQHDV24 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK);   
  buf      I1 (xTE, TE);   
  buf      I2 (xE, E);   
  or       I3 (n0, xE, xTE); 
  udp_tlat I4 (n1, n0, clk, xRN, xSN, NOTIFIER); 
  and      I5 (Q, n1, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q
         (negedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
        endspecify 
       `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANQHDV3 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK);   
  buf      I1 (xTE, TE);   
  buf      I2 (xE, E);   
  or       I3 (n0, xE, xTE); 
  udp_tlat I4 (n1, n0, clk, xRN, xSN, NOTIFIER); 
  and      I5 (Q, n1, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q
         (negedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
        endspecify 
       `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANQHDV4 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK);   
  buf      I1 (xTE, TE);   
  buf      I2 (xE, E);   
  or       I3 (n0, xE, xTE); 
  udp_tlat I4 (n1, n0, clk, xRN, xSN, NOTIFIER); 
  and      I5 (Q, n1, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q
         (negedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
        endspecify 
       `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANQHDV6 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK);   
  buf      I1 (xTE, TE);   
  buf      I2 (xE, E);   
  or       I3 (n0, xE, xTE); 
  udp_tlat I4 (n1, n0, clk, xRN, xSN, NOTIFIER); 
  and      I5 (Q, n1, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q
         (negedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
        endspecify 
       `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKLANQHDV8 ( Q, CK, E, TE); 
input CK, E, TE;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
 
  buf      I0 (clk, CK);   
  buf      I1 (xTE, TE);   
  buf      I2 (xE, E);   
  or       I3 (n0, xE, xTE); 
  udp_tlat I4 (n1, n0, clk, xRN, xSN, NOTIFIER); 
  and      I5 (Q, n1, clk); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q
         (negedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
        endspecify 
       `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKMUX2HDV0 ( Z, I0, I1, S); 
input I0, I1, S;
output Z;

 
  udp_mux2 (Z, I0, I1, S); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKMUX2HDV1 ( Z, I0, I1, S); 
input I0, I1, S;
output Z;

 
  udp_mux2 (Z, I0, I1, S); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKMUX2HDV2 ( Z, I0, I1, S); 
input I0, I1, S;
output Z;

 
  udp_mux2 (Z, I0, I1, S); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKMUX2HDV4 ( Z, I0, I1, S); 
input I0, I1, S;
output Z;

 
  udp_mux2 (Z, I0, I1, S); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKNAND2HDV0 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand SMC_I0 (ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKNAND2HDV1 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand SMC_I0 (ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKNAND2HDV12 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand SMC_I0 (ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKNAND2HDV16 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand SMC_I0 (ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKNAND2HDV2 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand SMC_I0 (ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKNAND2HDV4 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand SMC_I0 (ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKNAND2HDV8 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand SMC_I0 (ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKNAND2HDVL ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand SMC_I0 (ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKNOR2HDV12 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKNOR2HDV16 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKNOR2HDV2 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKNOR2HDV4 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKNOR2HDV8 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKOR2HDV0 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    or (Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKOR2HDV1 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    or (Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKOR2HDV12 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    or (Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKOR2HDV16 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    or (Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKOR2HDV2 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    or (Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKOR2HDV4 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    or (Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKOR2HDV8 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    or (Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKXOR2HDV0 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    xor SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (Z:A1) 
	 (posedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (Z:A1) 
	 (negedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (Z:A2) 
	 (posedge A2 => (Z:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (Z:A2) 
	 (negedge A2 => (Z:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKXOR2HDV1 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    xor SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (Z:A1) 
	 (posedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (Z:A1) 
	 (negedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (Z:A2) 
	 (posedge A2 => (Z:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (Z:A2) 
	 (negedge A2 => (Z:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKXOR2HDV2 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    xor SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (Z:A1) 
	 (posedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (Z:A1) 
	 (negedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (Z:A2) 
	 (posedge A2 => (Z:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (Z:A2) 
	 (negedge A2 => (Z:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module CLKXOR2HDV4 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    xor SMC_I0(Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (Z:A1) 
	 (posedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (Z:A1) 
	 (negedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (Z:A2) 
	 (posedge A2 => (Z:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (Z:A2) 
	 (negedge A2 => (Z:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DEL1HDV0 ( Z, I); 
input I;
output Z;

	buf SMC_I0( Z, I ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DEL1HDV1 ( Z, I); 
input I;
output Z;

	buf SMC_I0( Z, I ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DEL1HDV2 ( Z, I); 
input I;
output Z;

	buf SMC_I0( Z, I ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DEL1HDV4 ( Z, I); 
input I;
output Z;

	buf SMC_I0( Z, I ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DEL2HDV0 ( Z, I); 
input I;
output Z;

	buf SMC_I0( Z, I ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DEL2HDV1 ( Z, I); 
input I;
output Z;

	buf SMC_I0( Z, I ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DEL2HDV2 ( Z, I); 
input I;
output Z;

	buf SMC_I0( Z, I ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DEL2HDV4 ( Z, I); 
input I;
output Z;

	buf SMC_I0( Z, I ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DEL4HDV0 ( Z, I); 
input I;
output Z;

	buf SMC_I0( Z, I ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DEL4HDV1 ( Z, I); 
input I;
output Z;

	buf SMC_I0( Z, I ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DEL4HDV2 ( Z, I); 
input I;
output Z;

	buf SMC_I0( Z, I ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DEL4HDV4 ( Z, I); 
input I;
output Z;

	buf SMC_I0( Z, I ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DGRNQHDV0 ( Q, CK, D, RN); 
input CK, D, RN;
output Q;

  reg NOTIFIER; 
  supply1 xSN, EN; 
 
  buf       X0 (xRN, RN); 
  buf       IC (clk, CK); 
  udp_edfft I0 (n0, D, clk, xRN, xSN, EN, NOTIFIER); 
  buf       I1 (Q, n0); 
  and       I4 (Deff, D, xRN); 
 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DGRNQHDV1 ( Q, CK, D, RN); 
input CK, D, RN;
output Q;

  reg NOTIFIER; 
  supply1 xSN, EN; 
 
  buf       X0 (xRN, RN); 
  buf       IC (clk, CK); 
  udp_edfft I0 (n0, D, clk, xRN, xSN, EN, NOTIFIER); 
  buf       I1 (Q, n0); 
  and       I4 (Deff, D, xRN); 
 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DGRNQHDV2 ( Q, CK, D, RN); 
input CK, D, RN;
output Q;

  reg NOTIFIER; 
  supply1 xSN, EN; 
 
  buf       X0 (xRN, RN); 
  buf       IC (clk, CK); 
  udp_edfft I0 (n0, D, clk, xRN, xSN, EN, NOTIFIER); 
  buf       I1 (Q, n0); 
  and       I4 (Deff, D, xRN); 
 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DGRNQHDV4 ( Q, CK, D, RN); 
input CK, D, RN;
output Q;

  reg NOTIFIER; 
  supply1 xSN, EN; 
 
  buf       X0 (xRN, RN); 
  buf       IC (clk, CK); 
  udp_edfft I0 (n0, D, clk, xRN, xSN, EN, NOTIFIER); 
  buf       I1 (Q, n0); 
  and       I4 (Deff, D, xRN); 
 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DGRNQNHDV0 ( QN, CK, D, RN); 
input CK, D, RN;
output QN;

  reg NOTIFIER; 
  supply1 xSN, EN; 
 
  buf       X0 (xRN, RN); 
  buf       IC (clk, CK); 
  udp_edfft I0 (n0, D, clk, xRN, xSN, EN, NOTIFIER); 
  not       I2 (QN, n0); 
  and       I4 (Deff, D, xRN); 
 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DGRNQNHDV1 ( QN, CK, D, RN); 
input CK, D, RN;
output QN;

  reg NOTIFIER; 
  supply1 xSN, EN; 
 
  buf       X0 (xRN, RN); 
  buf       IC (clk, CK); 
  udp_edfft I0 (n0, D, clk, xRN, xSN, EN, NOTIFIER); 
  not       I2 (QN, n0); 
  and       I4 (Deff, D, xRN); 
 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DGRNQNHDV2 ( QN, CK, D, RN); 
input CK, D, RN;
output QN;

  reg NOTIFIER; 
  supply1 xSN, EN; 
 
  buf       X0 (xRN, RN); 
  buf       IC (clk, CK); 
  udp_edfft I0 (n0, D, clk, xRN, xSN, EN, NOTIFIER); 
  not       I2 (QN, n0); 
  and       I4 (Deff, D, xRN); 
 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DGRNQNHDV4 ( QN, CK, D, RN); 
input CK, D, RN;
output QN;

  reg NOTIFIER; 
  supply1 xSN, EN; 
 
  buf       X0 (xRN, RN); 
  buf       IC (clk, CK); 
  udp_edfft I0 (n0, D, clk, xRN, xSN, EN, NOTIFIER); 
  not       I2 (QN, n0); 
  and       I4 (Deff, D, xRN); 
 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DGRSNQHDV0 ( Q, CK, D, RN, SN);      
input CK, D, RN, SN;
output Q;

  reg NOTIFIER; 
  supply1 EN; 
 
  buf I0 (xRN, RN); 
  buf I1 (xSN, SN); 
  buf     IC (clk, CK); 
  udp_edffts I2 (n0, D, clk, xRN, xSN, EN, NOTIFIER); 
  buf     I3 (Q, n0); 
  not     I6 (nSN , SN); 
  and     I7 (out0, RN, nSN); 
  and     I8 (out1, D, RN); 
  or      I4 (Deff, out0, out1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    buf SMC_I9(ENABLE_RN, RN); 
 
    buf SMC_I10(ENABLE_RN, RN); 
     
    or  SMC_I11(Deff, out0, out1); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
	$width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DGRSNQHDV1 ( Q, CK, D, RN, SN);      
input CK, D, RN, SN;
output Q;

  reg NOTIFIER; 
  supply1 EN; 
 
  buf I0 (xRN, RN); 
  buf I1 (xSN, SN); 
  buf     IC (clk, CK); 
  udp_edffts I2 (n0, D, clk, xRN, xSN, EN, NOTIFIER); 
  buf     I3 (Q, n0); 
  not     I6 (nSN , SN); 
  and     I7 (out0, RN, nSN); 
  and     I8 (out1, D, RN); 
  or      I4 (Deff, out0, out1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    buf SMC_I9(ENABLE_RN, RN); 
 
    buf SMC_I10(ENABLE_RN, RN); 
     
    or  SMC_I11(Deff, out0, out1); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
	$width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DGRSNQHDV2 ( Q, CK, D, RN, SN);      
input CK, D, RN, SN;
output Q;

  reg NOTIFIER; 
  supply1 EN; 
 
  buf I0 (xRN, RN); 
  buf I1 (xSN, SN); 
  buf     IC (clk, CK); 
  udp_edffts I2 (n0, D, clk, xRN, xSN, EN, NOTIFIER); 
  buf     I3 (Q, n0); 
  not     I6 (nSN , SN); 
  and     I7 (out0, RN, nSN); 
  and     I8 (out1, D, RN); 
  or      I4 (Deff, out0, out1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    buf SMC_I9(ENABLE_RN, RN); 
 
    buf SMC_I10(ENABLE_RN, RN); 
     
    or  SMC_I11(Deff, out0, out1); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
	$width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DGRSNQHDV4 ( Q, CK, D, RN, SN);      
input CK, D, RN, SN;
output Q;

  reg NOTIFIER; 
  supply1 EN; 
 
  buf I0 (xRN, RN); 
  buf I1 (xSN, SN); 
  buf     IC (clk, CK); 
  udp_edffts I2 (n0, D, clk, xRN, xSN, EN, NOTIFIER); 
  buf     I3 (Q, n0); 
  not     I6 (nSN , SN); 
  and     I7 (out0, RN, nSN); 
  and     I8 (out1, D, RN); 
  or      I4 (Deff, out0, out1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    buf SMC_I9(ENABLE_RN, RN); 
 
    buf SMC_I10(ENABLE_RN, RN); 
     
    or  SMC_I11(Deff, out0, out1); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
	$width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DGRSNQNHDV0 ( QN, CK, D, RN, SN);      
input CK, D, RN, SN;
output QN;

  reg NOTIFIER; 
  supply1 EN; 
 
  buf I0 (xRN, RN); 
  buf I1 (xSN, SN); 
  buf     IC (clk, CK); 
  udp_edffts I2 (n0, D, clk, xRN, xSN, EN, NOTIFIER); 
  not     I5 (QN, n0); 
  not     I6 (nSN , SN); 
  and     I7 (out0, RN, nSN); 
  and     I8 (out1, D, RN); 
  or      I4 (Deff, out0, out1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    buf SMC_I9(ENABLE_RN, RN); 
 
    buf SMC_I10(ENABLE_RN, RN); 
     
    or  SMC_I11(Deff, out0, out1); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DGRSNQNHDV1 ( QN, CK, D, RN, SN);      
input CK, D, RN, SN;
output QN;

  reg NOTIFIER; 
  supply1 EN; 
 
  buf I0 (xRN, RN); 
  buf I1 (xSN, SN); 
  buf     IC (clk, CK); 
  udp_edffts I2 (n0, D, clk, xRN, xSN, EN, NOTIFIER); 
  not     I5 (QN, n0); 
  not     I6 (nSN , SN); 
  and     I7 (out0, RN, nSN); 
  and     I8 (out1, D, RN); 
  or      I4 (Deff, out0, out1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    buf SMC_I9(ENABLE_RN, RN); 
 
    buf SMC_I10(ENABLE_RN, RN); 
     
    or  SMC_I11(Deff, out0, out1); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DGRSNQNHDV2 ( QN, CK, D, RN, SN);      
input CK, D, RN, SN;
output QN;

  reg NOTIFIER; 
  supply1 EN; 
 
  buf I0 (xRN, RN); 
  buf I1 (xSN, SN); 
  buf     IC (clk, CK); 
  udp_edffts I2 (n0, D, clk, xRN, xSN, EN, NOTIFIER); 
  not     I5 (QN, n0); 
  not     I6 (nSN , SN); 
  and     I7 (out0, RN, nSN); 
  and     I8 (out1, D, RN); 
  or      I4 (Deff, out0, out1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    buf SMC_I9(ENABLE_RN, RN); 
 
    buf SMC_I10(ENABLE_RN, RN); 
     
    or  SMC_I11(Deff, out0, out1); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DGRSNQNHDV4 ( QN, CK, D, RN, SN);      
input CK, D, RN, SN;
output QN;

  reg NOTIFIER; 
  supply1 EN; 
 
  buf I0 (xRN, RN); 
  buf I1 (xSN, SN); 
  buf     IC (clk, CK); 
  udp_edffts I2 (n0, D, clk, xRN, xSN, EN, NOTIFIER); 
  not     I5 (QN, n0); 
  not     I6 (nSN , SN); 
  and     I7 (out0, RN, nSN); 
  and     I8 (out1, D, RN); 
  or      I4 (Deff, out0, out1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    buf SMC_I9(ENABLE_RN, RN); 
 
    buf SMC_I10(ENABLE_RN, RN); 
     
    or  SMC_I11(Deff, out0, out1); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DQHDV0 ( Q, CK, D); 
input CK, D;
output Q;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER); 
  buf     I1 (Q, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DQHDV1 ( Q, CK, D); 
input CK, D;
output Q;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER); 
  buf     I1 (Q, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DQHDV2 ( Q, CK, D); 
input CK, D;
output Q;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER); 
  buf     I1 (Q, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DQHDV4 ( Q, CK, D); 
input CK, D;
output Q;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER); 
  buf     I1 (Q, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DQNHDV0 ( QN, CK, D); 
input CK, D;
output QN;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER); 

  not     I2 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 

	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DQNHDV1 ( QN, CK, D); 
input CK, D;
output QN;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER); 

  not     I2 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 

	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DQNHDV2 ( QN, CK, D); 
input CK, D;
output QN;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER); 

  not     I2 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 

	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DQNHDV4 ( QN, CK, D); 
input CK, D;
output QN;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER); 

  not     I2 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 

	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRNQHDV0 (D, RDN, CK, Q); 
  input D, RDN, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRNQHDV1 (D, RDN, CK, Q); 
  input D, RDN, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRNQHDV2 (D, RDN, CK, Q); 
  input D, RDN, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRNQHDV4 (D, RDN, CK, Q); 
  input D, RDN, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRNQNHDV0 (D, RDN, CK, QN); 
  input D, RDN, CK;

  output QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);

  not     I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRNQNHDV1 (D, RDN, CK, QN); 
  input D, RDN, CK;

  output QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);

  not     I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRNQNHDV2 (D, RDN, CK, QN); 
  input D, RDN, CK;

  output QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);

  not     I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRNQNHDV4 (D, RDN, CK, QN); 
  input D, RDN, CK;

  output QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);

  not     I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRQHDV0 (D, RD, CK, Q); 
  input D, RD, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  not   XX0 (xRN,RD);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    not SMC_I5(ENABLE_NOT_RD,RD);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            negedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            posedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), negedge RD &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge RD,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRQHDV1 (D, RD, CK, Q); 
  input D, RD, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  not   XX0 (xRN,RD);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    not SMC_I5(ENABLE_NOT_RD,RD);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            negedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            posedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), negedge RD &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge RD,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRQHDV2 (D, RD, CK, Q); 
  input D, RD, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  not   XX0 (xRN,RD);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    not SMC_I5(ENABLE_NOT_RD,RD);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            negedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            posedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), negedge RD &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge RD,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRQHDV4 (D, RD, CK, Q); 
  input D, RD, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  not   XX0 (xRN,RD);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    not SMC_I5(ENABLE_NOT_RD,RD);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            negedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            posedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), negedge RD &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge RD,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRQNHDV0 (D, RD, CK, QN); 
  input D, RD, CK;

  output QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  not   XX0 (xRN,RD);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);

  not     I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    not SMC_I5(ENABLE_NOT_RD,RD);


  specify


	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RD --> QN
	(posedge RD => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RD --> QN
	(posedge RD => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RD --> QN
	(posedge RD => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RD --> QN
	(posedge RD => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            negedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            posedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), negedge RD &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge RD,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRQNHDV1 (D, RD, CK, QN); 
  input D, RD, CK;

  output QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  not   XX0 (xRN,RD);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);

  not     I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    not SMC_I5(ENABLE_NOT_RD,RD);


  specify


	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RD --> QN
	(posedge RD => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RD --> QN
	(posedge RD => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RD --> QN
	(posedge RD => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RD --> QN
	(posedge RD => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            negedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            posedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), negedge RD &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge RD,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRQNHDV2 (D, RD, CK, QN); 
  input D, RD, CK;

  output QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  not   XX0 (xRN,RD);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);

  not     I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    not SMC_I5(ENABLE_NOT_RD,RD);


  specify


	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RD --> QN
	(posedge RD => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RD --> QN
	(posedge RD => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RD --> QN
	(posedge RD => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RD --> QN
	(posedge RD => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            negedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            posedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), negedge RD &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge RD,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRQNHDV4 (D, RD, CK, QN); 
  input D, RD, CK;

  output QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  not   XX0 (xRN,RD);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);

  not     I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    not SMC_I5(ENABLE_NOT_RD,RD);


  specify


	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RD --> QN
	(posedge RD => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RD --> QN
	(posedge RD => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RD --> QN
	(posedge RD => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RD --> QN
	(posedge RD => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            negedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            posedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), negedge RD &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge RD,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRSNQHDV0 (D, RDN, SDN, CK, Q); 
  input D, RDN, SDN, CK;

  output Q;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf   XX0 (xSN,SDN);
  buf   XX1 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    and SMC_I6(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I7(ENABLE_SDN,SDN);

    buf SMC_I8(ENABLE_RDN,RDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRSNQHDV1 (D, RDN, SDN, CK, Q); 
  input D, RDN, SDN, CK;

  output Q;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf   XX0 (xSN,SDN);
  buf   XX1 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    and SMC_I6(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I7(ENABLE_SDN,SDN);

    buf SMC_I8(ENABLE_RDN,RDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRSNQHDV2 (D, RDN, SDN, CK, Q); 
  input D, RDN, SDN, CK;

  output Q;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf   XX0 (xSN,SDN);
  buf   XX1 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    and SMC_I6(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I7(ENABLE_SDN,SDN);

    buf SMC_I8(ENABLE_RDN,RDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRSNQHDV4 (D, RDN, SDN, CK, Q); 
  input D, RDN, SDN, CK;

  output Q;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf   XX0 (xSN,SDN);
  buf   XX1 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    and SMC_I6(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I7(ENABLE_SDN,SDN);

    buf SMC_I8(ENABLE_RDN,RDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRSNQNHDV0 (D, RDN, SDN, CK, QN); 
  input D, RDN, SDN, CK;

  output QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf   XX0 (xSN,SDN);
  buf   XX1 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  not     I2 (QN, n0);

  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    and SMC_I6(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I7(ENABLE_SDN,SDN);

    buf SMC_I8(ENABLE_RDN,RDN);


  specify



	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRSNQNHDV1 (D, RDN, SDN, CK, QN); 
  input D, RDN, SDN, CK;

  output QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf   XX0 (xSN,SDN);
  buf   XX1 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  not     I2 (QN, n0);

  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    and SMC_I6(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I7(ENABLE_SDN,SDN);

    buf SMC_I8(ENABLE_RDN,RDN);


  specify



	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRSNQNHDV2 (D, RDN, SDN, CK, QN); 
  input D, RDN, SDN, CK;

  output QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf   XX0 (xSN,SDN);
  buf   XX1 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  not     I2 (QN, n0);

  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    and SMC_I6(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I7(ENABLE_SDN,SDN);

    buf SMC_I8(ENABLE_RDN,RDN);


  specify



	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DRSNQNHDV4 (D, RDN, SDN, CK, QN); 
  input D, RDN, SDN, CK;

  output QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf   XX0 (xSN,SDN);
  buf   XX1 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  not     I2 (QN, n0);

  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    and SMC_I6(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I7(ENABLE_SDN,SDN);

    buf SMC_I8(ENABLE_RDN,RDN);


  specify



	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DSNQHDV0 (D, SDN, CK, Q); 
  input D, SDN, CK;

  output Q;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  buf   XX0 (xSN,SDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_SDN,SDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);



        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DSNQHDV1 (D, SDN, CK, Q); 
  input D, SDN, CK;

  output Q;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  buf   XX0 (xSN,SDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_SDN,SDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);



        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DSNQHDV2 (D, SDN, CK, Q); 
  input D, SDN, CK;

  output Q;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  buf   XX0 (xSN,SDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_SDN,SDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);



        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DSNQHDV4 (D, SDN, CK, Q); 
  input D, SDN, CK;

  output Q;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  buf   XX0 (xSN,SDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_SDN,SDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);



        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DSNQNHDV0 (D, SDN, CK, QN); 
  input D, SDN, CK;

  output QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  buf   XX0 (xSN,SDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);

  not     I2 (QN, n0);
  
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_SDN,SDN);


  specify



	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DSNQNHDV1 (D, SDN, CK, QN); 
  input D, SDN, CK;

  output QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  buf   XX0 (xSN,SDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);

  not     I2 (QN, n0);
  
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_SDN,SDN);


  specify



	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DSNQNHDV2 (D, SDN, CK, QN); 
  input D, SDN, CK;

  output QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  buf   XX0 (xSN,SDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);

  not     I2 (QN, n0);
  
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_SDN,SDN);


  specify



	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module DSNQNHDV4 (D, SDN, CK, QN); 
  input D, SDN, CK;

  output QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  buf   XX0 (xSN,SDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);

  not     I2 (QN, n0);
  
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_SDN,SDN);


  specify



	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module EDQHDV0 ( Q, CK, D, E); 
input CK, D, E;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
  udp_edff I0 (n0, D, CK, xRN, xSN, E, NOTIFIER); 
  buf     B1 (Q, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    buf SMC_I6(ENABLE_E, E); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_E == 1'b1), 
            negedge D &&& (ENABLE_E == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_E == 1'b1), 
            posedge D &&& (ENABLE_E == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module EDQHDV1 ( Q, CK, D, E); 
input CK, D, E;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
  udp_edff I0 (n0, D, CK, xRN, xSN, E, NOTIFIER); 
  buf     B1 (Q, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    buf SMC_I6(ENABLE_E, E); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_E == 1'b1), 
            negedge D &&& (ENABLE_E == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_E == 1'b1), 
            posedge D &&& (ENABLE_E == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module EDQHDV2 ( Q, CK, D, E); 
input CK, D, E;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
  udp_edff I0 (n0, D, CK, xRN, xSN, E, NOTIFIER); 
  buf     B1 (Q, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    buf SMC_I6(ENABLE_E, E); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_E == 1'b1), 
            negedge D &&& (ENABLE_E == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_E == 1'b1), 
            posedge D &&& (ENABLE_E == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module EDQHDV4 ( Q, CK, D, E); 
input CK, D, E;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
  udp_edff I0 (n0, D, CK, xRN, xSN, E, NOTIFIER); 
  buf     B1 (Q, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    buf SMC_I6(ENABLE_E, E); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_E == 1'b1), 
            negedge D &&& (ENABLE_E == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_E == 1'b1), 
            posedge D &&& (ENABLE_E == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module EDQNHDV0 ( QN, CK, D, E);       
input CK, D, E;
output QN;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
  udp_edff I0 (n0, D, CK, xRN, xSN, E, NOTIFIER); 
  not      I1 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    buf SMC_I6(ENABLE_E, E); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_E == 1'b1), 
            negedge D &&& (ENABLE_E == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_E == 1'b1), 
            posedge D &&& (ENABLE_E == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module EDQNHDV1 ( QN, CK, D, E);       
input CK, D, E;
output QN;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
  udp_edff I0 (n0, D, CK, xRN, xSN, E, NOTIFIER); 
  not      I1 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    buf SMC_I6(ENABLE_E, E); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_E == 1'b1), 
            negedge D &&& (ENABLE_E == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_E == 1'b1), 
            posedge D &&& (ENABLE_E == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module EDQNHDV2 ( QN, CK, D, E);       
input CK, D, E;
output QN;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
  udp_edff I0 (n0, D, CK, xRN, xSN, E, NOTIFIER); 
  not      I1 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    buf SMC_I6(ENABLE_E, E); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_E == 1'b1), 
            negedge D &&& (ENABLE_E == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_E == 1'b1), 
            posedge D &&& (ENABLE_E == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module EDQNHDV4 ( QN, CK, D, E);       
input CK, D, E;
output QN;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
  udp_edff I0 (n0, D, CK, xRN, xSN, E, NOTIFIER); 
  not      I1 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    buf SMC_I6(ENABLE_E, E); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_E == 1'b1), 
            negedge D &&& (ENABLE_E == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_E == 1'b1), 
            posedge D &&& (ENABLE_E == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module EDRNQHDV0 (D, E, RDN, CK, Q); 
  input D, E, RDN, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D_AND_E;

  buf    XX0 (xRN,RDN);
  udp_edff I0 (n0,D,CK, xRN, xSN,E, NOTIFIER);
  buf     B1 (Q, n0);
  
  assign ENABLE_D_AND_E = ( D & E )?1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    and SMC_I4(ENABLE_E_AND_RDN,E,RDN);

    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_E_AND_RDN == 1'b1),
            negedge D &&& (ENABLE_E_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_E_AND_RDN == 1'b1),
            posedge D &&& (ENABLE_E_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge E &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge E &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_E == 1'b1), posedge RDN &&& (ENABLE_D_AND_E == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module EDRNQHDV1 (D, E, RDN, CK, Q); 
  input D, E, RDN, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D_AND_E;

  buf    XX0 (xRN,RDN);
  udp_edff I0 (n0,D,CK, xRN, xSN,E, NOTIFIER);
  buf     B1 (Q, n0);
  
  assign ENABLE_D_AND_E = ( D & E )?1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    and SMC_I4(ENABLE_E_AND_RDN,E,RDN);

    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_E_AND_RDN == 1'b1),
            negedge D &&& (ENABLE_E_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_E_AND_RDN == 1'b1),
            posedge D &&& (ENABLE_E_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge E &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge E &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_E == 1'b1), posedge RDN &&& (ENABLE_D_AND_E == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module EDRNQHDV2 (D, E, RDN, CK, Q); 
  input D, E, RDN, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D_AND_E;

  buf    XX0 (xRN,RDN);
  udp_edff I0 (n0,D,CK, xRN, xSN,E, NOTIFIER);
  buf     B1 (Q, n0);
  
  assign ENABLE_D_AND_E = ( D & E )?1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    and SMC_I4(ENABLE_E_AND_RDN,E,RDN);

    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_E_AND_RDN == 1'b1),
            negedge D &&& (ENABLE_E_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_E_AND_RDN == 1'b1),
            posedge D &&& (ENABLE_E_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge E &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge E &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_E == 1'b1), posedge RDN &&& (ENABLE_D_AND_E == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module EDRNQHDV4 (D, E, RDN, CK, Q); 
  input D, E, RDN, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D_AND_E;

  buf    XX0 (xRN,RDN);
  udp_edff I0 (n0,D,CK, xRN, xSN,E, NOTIFIER);
  buf     B1 (Q, n0);
  
  assign ENABLE_D_AND_E = ( D & E )?1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    and SMC_I4(ENABLE_E_AND_RDN,E,RDN);

    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_E_AND_RDN == 1'b1),
            negedge D &&& (ENABLE_E_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_E_AND_RDN == 1'b1),
            posedge D &&& (ENABLE_E_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge E &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge E &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_E == 1'b1), posedge RDN &&& (ENABLE_D_AND_E == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module EDRNQNHDV0 (D, E, RDN, CK, QN);       
  input D, E, RDN, CK;

  output QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D_AND_E;

  buf     XX0 (xRN,RDN); 
  udp_edff I0 (n0,D,CK, xRN, xSN,E, NOTIFIER);
  not      I1 (QN, n0);
  
  assign ENABLE_D_AND_E = ( D & E )?1'b1:1'b0;


  `ifdef functional // functional //

  `else // functional //
    and SMC_I6(ENABLE_E_AND_RDN,E,RDN);

    buf SMC_I7(ENABLE_RDN,RDN);


  specify


	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_E_AND_RDN == 1'b1),
            negedge D &&& (ENABLE_E_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_E_AND_RDN == 1'b1),
            posedge D &&& (ENABLE_E_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge E &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge E &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_E == 1'b1), posedge RDN &&& (ENABLE_D_AND_E == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module EDRNQNHDV1 (D, E, RDN, CK, QN);       
  input D, E, RDN, CK;

  output QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D_AND_E;

  buf     XX0 (xRN,RDN); 
  udp_edff I0 (n0,D,CK, xRN, xSN,E, NOTIFIER);
  not      I1 (QN, n0);
  
  assign ENABLE_D_AND_E = ( D & E )?1'b1:1'b0;


  `ifdef functional // functional //

  `else // functional //
    and SMC_I6(ENABLE_E_AND_RDN,E,RDN);

    buf SMC_I7(ENABLE_RDN,RDN);


  specify


	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_E_AND_RDN == 1'b1),
            negedge D &&& (ENABLE_E_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_E_AND_RDN == 1'b1),
            posedge D &&& (ENABLE_E_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge E &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge E &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_E == 1'b1), posedge RDN &&& (ENABLE_D_AND_E == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module EDRNQNHDV2 (D, E, RDN, CK, QN);       
  input D, E, RDN, CK;

  output QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D_AND_E;

  buf     XX0 (xRN,RDN); 
  udp_edff I0 (n0,D,CK, xRN, xSN,E, NOTIFIER);
  not      I1 (QN, n0);
  
  assign ENABLE_D_AND_E = ( D & E )?1'b1:1'b0;


  `ifdef functional // functional //

  `else // functional //
    and SMC_I6(ENABLE_E_AND_RDN,E,RDN);

    buf SMC_I7(ENABLE_RDN,RDN);


  specify


	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_E_AND_RDN == 1'b1),
            negedge D &&& (ENABLE_E_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_E_AND_RDN == 1'b1),
            posedge D &&& (ENABLE_E_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge E &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge E &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_E == 1'b1), posedge RDN &&& (ENABLE_D_AND_E == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module EDRNQNHDV4 (D, E, RDN, CK, QN);       
  input D, E, RDN, CK;

  output QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D_AND_E;

  buf     XX0 (xRN,RDN); 
  udp_edff I0 (n0,D,CK, xRN, xSN,E, NOTIFIER);
  not      I1 (QN, n0);
  
  assign ENABLE_D_AND_E = ( D & E )?1'b1:1'b0;


  `ifdef functional // functional //

  `else // functional //
    and SMC_I6(ENABLE_E_AND_RDN,E,RDN);

    buf SMC_I7(ENABLE_RDN,RDN);


  specify


	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_E_AND_RDN == 1'b1),
            negedge D &&& (ENABLE_E_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_E_AND_RDN == 1'b1),
            posedge D &&& (ENABLE_E_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge E &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge E &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_E == 1'b1), posedge RDN &&& (ENABLE_D_AND_E == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module F_DIODEHD2 ( A); 
input A;


   `ifdef functional  //  functional //

   `else




   specify

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module F_DIODENHD2 ( A); 
input A;


   `ifdef functional  //  functional //

   `else




   specify

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INHDV0 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INHDV1 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INHDV10 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INHDV12 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INHDV14 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INHDV16 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INHDV2 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INHDV20 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INHDV24 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INHDV3 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INHDV32 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INHDV4 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INHDV6 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INHDV8 ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module INHDVL ( ZN, I); 
input I;
output ZN;

 
    not I0(ZN, I); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHHDV0 ( Q, QN, D, E); 
input D, E;
output Q, QN;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
  not I3(clk,E); 
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER); 
  buf      I1 (Q, n0); 
  not      I2 (QN, n0); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc D --> Q 
	 (D => Q) = (1.0,1.0); 
 
	// arc E --> Q 
	(posedge E => (Q : D))  = (1.0,1.0); 
 
	// arc D --> QN 
	 (D => QN) = (1.0,1.0); 
 
	// arc E --> QN 
	(posedge E => (QN : D))  = (1.0,1.0); 
 
        $setuphold(negedge E, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge E, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $width(posedge E,1.0,0,NOTIFIER); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHHDV1 ( Q, QN, D, E); 
input D, E;
output Q, QN;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
  not I3(clk,E); 
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER); 
  buf      I1 (Q, n0); 
  not      I2 (QN, n0); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc D --> Q 
	 (D => Q) = (1.0,1.0); 
 
	// arc E --> Q 
	(posedge E => (Q : D))  = (1.0,1.0); 
 
	// arc D --> QN 
	 (D => QN) = (1.0,1.0); 
 
	// arc E --> QN 
	(posedge E => (QN : D))  = (1.0,1.0); 
 
        $setuphold(negedge E, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge E, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $width(posedge E,1.0,0,NOTIFIER); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHHDV2 ( Q, QN, D, E); 
input D, E;
output Q, QN;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
  not I3(clk,E); 
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER); 
  buf      I1 (Q, n0); 
  not      I2 (QN, n0); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc D --> Q 
	 (D => Q) = (1.0,1.0); 
 
	// arc E --> Q 
	(posedge E => (Q : D))  = (1.0,1.0); 
 
	// arc D --> QN 
	 (D => QN) = (1.0,1.0); 
 
	// arc E --> QN 
	(posedge E => (QN : D))  = (1.0,1.0); 
 
        $setuphold(negedge E, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge E, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $width(posedge E,1.0,0,NOTIFIER); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHHDV4 ( Q, QN, D, E); 
input D, E;
output Q, QN;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
  not I3(clk,E); 
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER); 
  buf      I1 (Q, n0); 
  not      I2 (QN, n0); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc D --> Q 
	 (D => Q) = (1.0,1.0); 
 
	// arc E --> Q 
	(posedge E => (Q : D))  = (1.0,1.0); 
 
	// arc D --> QN 
	 (D => QN) = (1.0,1.0); 
 
	// arc E --> QN 
	(posedge E => (QN : D))  = (1.0,1.0); 
 
        $setuphold(negedge E, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge E, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $width(posedge E,1.0,0,NOTIFIER); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHRNHDV0 (D, RDN, E, Q, QN); 
  input D, RDN, E;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

not      I3(clk,E);
buf      XX0 (xRN,RDN);
udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
buf      I1 (Q, n0);
not      I2 (QN, n0);

assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc E --> QN
	(posedge E => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

        $setuphold(negedge E &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHRNHDV1 (D, RDN, E, Q, QN); 
  input D, RDN, E;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

not      I3(clk,E);
buf      XX0 (xRN,RDN);
udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
buf      I1 (Q, n0);
not      I2 (QN, n0);

assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc E --> QN
	(posedge E => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

        $setuphold(negedge E &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHRNHDV2 (D, RDN, E, Q, QN); 
  input D, RDN, E;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

not      I3(clk,E);
buf      XX0 (xRN,RDN);
udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
buf      I1 (Q, n0);
not      I2 (QN, n0);

assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc E --> QN
	(posedge E => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

        $setuphold(negedge E &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHRNHDV4 (D, RDN, E, Q, QN); 
  input D, RDN, E;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

not      I3(clk,E);
buf      XX0 (xRN,RDN);
udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
buf      I1 (Q, n0);
not      I2 (QN, n0);

assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc E --> QN
	(posedge E => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

        $setuphold(negedge E &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHRSNHDV0 (D, RDN, SDN, E, Q, QN); 
  input D, RDN, SDN, E;

  output Q, QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf       XX0 (xSN,SDN);
  buf       XX1 (xRN,RDN);
  not I3(clk,E);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;


  `ifdef functional // functional //

  `else // functional //
    and SMC_I6(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I7(ENABLE_SDN,SDN);

    buf SMC_I8(ENABLE_RDN,RDN);
    
    not SMC_I9(ENABLE_NOT_E,E);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc E --> QN
	(posedge E => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(negedge E &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN &&& (ENABLE_NOT_E == 1'b1),
            posedge SDN &&& (ENABLE_NOT_E == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHRSNHDV1 (D, RDN, SDN, E, Q, QN); 
  input D, RDN, SDN, E;

  output Q, QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf       XX0 (xSN,SDN);
  buf       XX1 (xRN,RDN);
  not I3(clk,E);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;


  `ifdef functional // functional //

  `else // functional //
    and SMC_I6(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I7(ENABLE_SDN,SDN);

    buf SMC_I8(ENABLE_RDN,RDN);
    
    not SMC_I9(ENABLE_NOT_E,E);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc E --> QN
	(posedge E => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(negedge E &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN &&& (ENABLE_NOT_E == 1'b1),
            posedge SDN &&& (ENABLE_NOT_E == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHRSNHDV2 (D, RDN, SDN, E, Q, QN); 
  input D, RDN, SDN, E;

  output Q, QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf       XX0 (xSN,SDN);
  buf       XX1 (xRN,RDN);
  not I3(clk,E);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;


  `ifdef functional // functional //

  `else // functional //
    and SMC_I6(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I7(ENABLE_SDN,SDN);

    buf SMC_I8(ENABLE_RDN,RDN);
    
    not SMC_I9(ENABLE_NOT_E,E);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc E --> QN
	(posedge E => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(negedge E &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN &&& (ENABLE_NOT_E == 1'b1),
            posedge SDN &&& (ENABLE_NOT_E == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHRSNHDV4 (D, RDN, SDN, E, Q, QN); 
  input D, RDN, SDN, E;

  output Q, QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf       XX0 (xSN,SDN);
  buf       XX1 (xRN,RDN);
  not I3(clk,E);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;


  `ifdef functional // functional //

  `else // functional //
    and SMC_I6(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I7(ENABLE_SDN,SDN);

    buf SMC_I8(ENABLE_RDN,RDN);
    
    not SMC_I9(ENABLE_NOT_E,E);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc E --> QN
	(posedge E => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(negedge E &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN &&& (ENABLE_NOT_E == 1'b1),
            posedge SDN &&& (ENABLE_NOT_E == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHSNHDV0 (D, SDN, E, Q, QN); 
  input D, SDN, E;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  not      I3 (clk,E);
  buf      XX0 (xSN,SDN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);
  
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_SDN,SDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc E --> QN
	(posedge E => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(negedge E &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHSNHDV1 (D, SDN, E, Q, QN); 
  input D, SDN, E;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  not      I3 (clk,E);
  buf      XX0 (xSN,SDN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);
  
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_SDN,SDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc E --> QN
	(posedge E => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(negedge E &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHSNHDV2 (D, SDN, E, Q, QN); 
  input D, SDN, E;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  not      I3 (clk,E);
  buf      XX0 (xSN,SDN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);
  
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_SDN,SDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc E --> QN
	(posedge E => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(negedge E &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LAHSNHDV4 (D, SDN, E, Q, QN); 
  input D, SDN, E;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  not      I3 (clk,E);
  buf      XX0 (xSN,SDN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);
  
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_SDN,SDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc E --> QN
	(posedge E => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(negedge E &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LALHDV0 (D, EN, Q, QN);
  input D, EN;
  output Q, QN;
  reg NOTIFIER;
  supply1 xRN, xSN;

  buf      I3 (clk, EN);
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc EN --> QN
	(negedge EN => (QN : D))  = (1.0,1.0);

        $setuphold(posedge EN, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge EN, posedge D, 1.0, 1.0, NOTIFIER);



        $width(negedge EN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule     // LALHSV1 //
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LALHDV1 (D, EN, Q, QN);
  input D, EN;
  output Q, QN;
  reg NOTIFIER;
  supply1 xRN, xSN;

  buf      I3 (clk, EN);
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc EN --> QN
	(negedge EN => (QN : D))  = (1.0,1.0);

        $setuphold(posedge EN, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge EN, posedge D, 1.0, 1.0, NOTIFIER);



        $width(negedge EN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule     // LALHSV1 //
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LALHDV2 (D, EN, Q, QN);
  input D, EN;
  output Q, QN;
  reg NOTIFIER;
  supply1 xRN, xSN;

  buf      I3 (clk, EN);
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc EN --> QN
	(negedge EN => (QN : D))  = (1.0,1.0);

        $setuphold(posedge EN, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge EN, posedge D, 1.0, 1.0, NOTIFIER);



        $width(negedge EN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule     // LALHSV1 //
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LALHDV4 (D, EN, Q, QN);
  input D, EN;
  output Q, QN;
  reg NOTIFIER;
  supply1 xRN, xSN;

  buf      I3 (clk, EN);
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc EN --> QN
	(negedge EN => (QN : D))  = (1.0,1.0);

        $setuphold(posedge EN, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge EN, posedge D, 1.0, 1.0, NOTIFIER);



        $width(negedge EN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule     // LALHSV1 //
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LALRNHDV0 (D, RDN, EN, Q, QN); 
  input D, RDN, EN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf      I3 (clk,EN);
  buf       XX0 (xRN,RDN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;
  
  `ifdef functional // functional //

  `else // functional //
    buf SMC_I6(ENABLE_RDN,RDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc EN --> QN
	(negedge EN => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

        $setuphold(posedge EN &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge EN,1.0,0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LALRNHDV1 (D, RDN, EN, Q, QN); 
  input D, RDN, EN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf      I3 (clk,EN);
  buf       XX0 (xRN,RDN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;
  
  `ifdef functional // functional //

  `else // functional //
    buf SMC_I6(ENABLE_RDN,RDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc EN --> QN
	(negedge EN => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

        $setuphold(posedge EN &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge EN,1.0,0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LALRNHDV2 (D, RDN, EN, Q, QN); 
  input D, RDN, EN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf      I3 (clk,EN);
  buf       XX0 (xRN,RDN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;
  
  `ifdef functional // functional //

  `else // functional //
    buf SMC_I6(ENABLE_RDN,RDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc EN --> QN
	(negedge EN => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

        $setuphold(posedge EN &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge EN,1.0,0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LALRNHDV4 (D, RDN, EN, Q, QN); 
  input D, RDN, EN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf      I3 (clk,EN);
  buf       XX0 (xRN,RDN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;
  
  `ifdef functional // functional //

  `else // functional //
    buf SMC_I6(ENABLE_RDN,RDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc EN --> QN
	(negedge EN => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

        $setuphold(posedge EN &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge EN,1.0,0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LALRSNHDV0 (D, RDN, SDN, EN, Q, QN); 
  input D, RDN, SDN, EN;

  output Q, QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf      I3 (clk,EN);
  buf      XX0 (xSN,SDN);
  buf      XX1 (xRN,RDN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    and SMC_I7(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I8(ENABLE_SDN,SDN);

    buf SMC_I9(ENABLE_RDN,RDN);

    buf SMC_I10(ENABLE_EN,EN);

  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc EN --> QN
	(negedge EN => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(posedge EN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge EN,1.0,0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN &&& (ENABLE_EN == 1'b1),
            posedge SDN &&& (ENABLE_EN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LALRSNHDV1 (D, RDN, SDN, EN, Q, QN); 
  input D, RDN, SDN, EN;

  output Q, QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf      I3 (clk,EN);
  buf      XX0 (xSN,SDN);
  buf      XX1 (xRN,RDN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    and SMC_I7(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I8(ENABLE_SDN,SDN);

    buf SMC_I9(ENABLE_RDN,RDN);

    buf SMC_I10(ENABLE_EN,EN);

  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc EN --> QN
	(negedge EN => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(posedge EN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge EN,1.0,0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN &&& (ENABLE_EN == 1'b1),
            posedge SDN &&& (ENABLE_EN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LALRSNHDV2 (D, RDN, SDN, EN, Q, QN); 
  input D, RDN, SDN, EN;

  output Q, QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf      I3 (clk,EN);
  buf      XX0 (xSN,SDN);
  buf      XX1 (xRN,RDN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    and SMC_I7(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I8(ENABLE_SDN,SDN);

    buf SMC_I9(ENABLE_RDN,RDN);

    buf SMC_I10(ENABLE_EN,EN);

  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc EN --> QN
	(negedge EN => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(posedge EN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge EN,1.0,0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN &&& (ENABLE_EN == 1'b1),
            posedge SDN &&& (ENABLE_EN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LALRSNHDV4 (D, RDN, SDN, EN, Q, QN); 
  input D, RDN, SDN, EN;

  output Q, QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf      I3 (clk,EN);
  buf      XX0 (xSN,SDN);
  buf      XX1 (xRN,RDN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    and SMC_I7(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I8(ENABLE_SDN,SDN);

    buf SMC_I9(ENABLE_RDN,RDN);

    buf SMC_I10(ENABLE_EN,EN);

  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc EN --> QN
	(negedge EN => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(posedge EN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge EN,1.0,0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN &&& (ENABLE_EN == 1'b1),
            posedge SDN &&& (ENABLE_EN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LALSNHDV0 (D, SDN, EN, Q, QN); 
  input D, SDN, EN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;


  buf      I3 (clk,EN);
  buf      XX0 (xSN,SDN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I6(ENABLE_SDN,SDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc EN --> QN
	(negedge EN => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(posedge EN &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge EN,1.0,0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LALSNHDV1 (D, SDN, EN, Q, QN); 
  input D, SDN, EN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;


  buf      I3 (clk,EN);
  buf      XX0 (xSN,SDN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I6(ENABLE_SDN,SDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc EN --> QN
	(negedge EN => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(posedge EN &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge EN,1.0,0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LALSNHDV2 (D, SDN, EN, Q, QN); 
  input D, SDN, EN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;


  buf      I3 (clk,EN);
  buf      XX0 (xSN,SDN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I6(ENABLE_SDN,SDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc EN --> QN
	(negedge EN => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(posedge EN &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge EN,1.0,0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module LALSNHDV4 (D, SDN, EN, Q, QN); 
  input D, SDN, EN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;


  buf      I3 (clk,EN);
  buf      XX0 (xSN,SDN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I6(ENABLE_SDN,SDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc EN --> QN
	(negedge EN => (QN : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(posedge EN &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge EN,1.0,0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MAJ23HDV0 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

	and SMC_I0( Z_row1, A1, A2 ); 
	and SMC_I1( Z_row2, A1, A3 ); 
	and SMC_I2( Z_row3, A2, A3 ); 
	or SMC_I3( Z, Z_row1, Z_row2, Z_row3 ); 

   `ifdef functional  //  functional //

   `else




   specify

	if(A2==1'b0 && A3==1'b1)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A2==1'b1 && A3==1'b0)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1==1'b0 && A3==1'b1)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b1 && A3==1'b0)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MAJ23HDV1 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

	and SMC_I0( Z_row1, A1, A2 ); 
	and SMC_I1( Z_row2, A1, A3 ); 
	and SMC_I2( Z_row3, A2, A3 ); 
	or SMC_I3( Z, Z_row1, Z_row2, Z_row3 ); 

   `ifdef functional  //  functional //

   `else




   specify

	if(A2==1'b0 && A3==1'b1)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A2==1'b1 && A3==1'b0)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1==1'b0 && A3==1'b1)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b1 && A3==1'b0)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MAJ23HDV2 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

	and SMC_I0( Z_row1, A1, A2 ); 
	and SMC_I1( Z_row2, A1, A3 ); 
	and SMC_I2( Z_row3, A2, A3 ); 
	or SMC_I3( Z, Z_row1, Z_row2, Z_row3 ); 

   `ifdef functional  //  functional //

   `else




   specify

	if(A2==1'b0 && A3==1'b1)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A2==1'b1 && A3==1'b0)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1==1'b0 && A3==1'b1)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b1 && A3==1'b0)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MAJ23HDV4 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

	and SMC_I0( Z_row1, A1, A2 ); 
	and SMC_I1( Z_row2, A1, A3 ); 
	and SMC_I2( Z_row3, A2, A3 ); 
	or SMC_I3( Z, Z_row1, Z_row2, Z_row3 ); 

   `ifdef functional  //  functional //

   `else




   specify

	if(A2==1'b0 && A3==1'b1)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A2==1'b1 && A3==1'b0)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1==1'b0 && A3==1'b1)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b1 && A3==1'b0)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MAJ23HDVL ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

	and SMC_I0( Z_row1, A1, A2 ); 
	and SMC_I1( Z_row2, A1, A3 ); 
	and SMC_I2( Z_row3, A2, A3 ); 
	or SMC_I3( Z, Z_row1, Z_row2, Z_row3 ); 

   `ifdef functional  //  functional //

   `else




   specify

	if(A2==1'b0 && A3==1'b1)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A2==1'b1 && A3==1'b0)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1==1'b0 && A3==1'b1)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b1 && A3==1'b0)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MAOI222HDV0 ( ZN, A, B, C); 
input A, B, C;
output ZN;

    
   and I0(outAB, A, B); 
   and I1(outBC, B, C); 
   and I2(outAC, A, C); 
   nor I3(ZN, outAB, outBC, outAC); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && C==1'b1) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(B==1'b1 && C==1'b0) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && C==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && C==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MAOI222HDV1 ( ZN, A, B, C); 
input A, B, C;
output ZN;

    
   and I0(outAB, A, B); 
   and I1(outBC, B, C); 
   and I2(outAC, A, C); 
   nor I3(ZN, outAB, outBC, outAC); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && C==1'b1) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(B==1'b1 && C==1'b0) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && C==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && C==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MAOI222HDV2 ( ZN, A, B, C); 
input A, B, C;
output ZN;

    
   and I0(outAB, A, B); 
   and I1(outBC, B, C); 
   and I2(outAC, A, C); 
   nor I3(ZN, outAB, outBC, outAC); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && C==1'b1) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(B==1'b1 && C==1'b0) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && C==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && C==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MAOI222HDV4 ( ZN, A, B, C); 
input A, B, C;
output ZN;

    
   and I0(outAB, A, B); 
   and I1(outBC, B, C); 
   and I2(outAC, A, C); 
   nor I3(ZN, outAB, outBC, outAC); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && C==1'b1) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(B==1'b1 && C==1'b0) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && C==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && C==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MAOI222HDVL ( ZN, A, B, C); 
input A, B, C;
output ZN;

    
   and I0(outAB, A, B); 
   and I1(outBC, B, C); 
   and I2(outAC, A, C); 
   nor I3(ZN, outAB, outBC, outAC); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && C==1'b1) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(B==1'b1 && C==1'b0) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && C==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && C==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MOAI222HDV0 ( ZN, A, B, C ); 
   input A, B, C;
   output ZN;

   or   I0(outAB, A, B);
   or   I1(outBC, B, C);
   or   I2(outAC, A, C);
   nand I3(ZN, outAB, outBC, outAC);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B==1'b0 && C==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B==1'b1 && C==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(A==1'b0 && C==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b1 && C==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MOAI222HDV1 ( ZN, A, B, C ); 
   input A, B, C;
   output ZN;

   or   I0(outAB, A, B);
   or   I1(outBC, B, C);
   or   I2(outAC, A, C);
   nand I3(ZN, outAB, outBC, outAC);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B==1'b0 && C==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B==1'b1 && C==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(A==1'b0 && C==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b1 && C==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MOAI222HDV2 ( ZN, A, B, C ); 
   input A, B, C;
   output ZN;

   or   I0(outAB, A, B);
   or   I1(outBC, B, C);
   or   I2(outAC, A, C);
   nand I3(ZN, outAB, outBC, outAC);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B==1'b0 && C==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B==1'b1 && C==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(A==1'b0 && C==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b1 && C==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MOAI222HDV4 ( ZN, A, B, C ); 
   input A, B, C;
   output ZN;

   or   I0(outAB, A, B);
   or   I1(outBC, B, C);
   or   I2(outAC, A, C);
   nand I3(ZN, outAB, outBC, outAC);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B==1'b0 && C==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B==1'b1 && C==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(A==1'b0 && C==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b1 && C==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MOAI222HDVL ( ZN, A, B, C ); 
   input A, B, C;
   output ZN;

   or   I0(outAB, A, B);
   or   I1(outBC, B, C);
   or   I2(outAC, A, C);
   nand I3(ZN, outAB, outBC, outAC);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B==1'b0 && C==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B==1'b1 && C==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(A==1'b0 && C==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b1 && C==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX2HDV0 ( Z, I0, I1, S); 
input I0, I1, S;
output Z;

 
  udp_mux2 (Z, I0, I1, S); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX2HDV1 ( Z, I0, I1, S); 
input I0, I1, S;
output Z;

 
  udp_mux2 (Z, I0, I1, S); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX2HDV2 ( Z, I0, I1, S); 
input I0, I1, S;
output Z;

 
  udp_mux2 (Z, I0, I1, S); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX2HDV4 ( Z, I0, I1, S); 
input I0, I1, S;
output Z;

 
  udp_mux2 (Z, I0, I1, S); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX2NHDV0 ( ZN, I0, I1, S); 
input I0, I1, S;
output ZN;

 
  udp_mux2 I00(z, I0, I1, S); 
  not      I01(ZN, z);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b1) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 	
	ifnone
	(I0 => ZN) = (1.0,1.0);	
 
	if(I0==1'b0) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 

	ifnone
	(I1 => ZN) = (1.0,1.0);	
 
	// arc posedge S --> (ZN:S) 
	 (posedge S => (ZN:S)) = (1.0,1.0); 
 
	// arc negedge S --> (ZN:S) 
	 (negedge S => (ZN:S)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX2NHDV1 ( ZN, I0, I1, S); 
input I0, I1, S;
output ZN;

 
  udp_mux2 I00(z, I0, I1, S); 
  not      I01(ZN, z);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b1) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 	
	ifnone
	(I0 => ZN) = (1.0,1.0);	
 
	if(I0==1'b0) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 

	ifnone
	(I1 => ZN) = (1.0,1.0);	
 
	// arc posedge S --> (ZN:S) 
	 (posedge S => (ZN:S)) = (1.0,1.0); 
 
	// arc negedge S --> (ZN:S) 
	 (negedge S => (ZN:S)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX2NHDV2 ( ZN, I0, I1, S); 
input I0, I1, S;
output ZN;

 
  udp_mux2 I00(z, I0, I1, S); 
  not      I01(ZN, z);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b1) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 	
	ifnone
	(I0 => ZN) = (1.0,1.0);	
 
	if(I0==1'b0) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 

	ifnone
	(I1 => ZN) = (1.0,1.0);	
 
	// arc posedge S --> (ZN:S) 
	 (posedge S => (ZN:S)) = (1.0,1.0); 
 
	// arc negedge S --> (ZN:S) 
	 (negedge S => (ZN:S)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX2NHDV4 ( ZN, I0, I1, S); 
input I0, I1, S;
output ZN;

 
  udp_mux2 I00(z, I0, I1, S); 
  not      I01(ZN, z);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b1) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 	
	ifnone
	(I0 => ZN) = (1.0,1.0);	
 
	if(I0==1'b0) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 

	ifnone
	(I1 => ZN) = (1.0,1.0);	
 
	// arc posedge S --> (ZN:S) 
	 (posedge S => (ZN:S)) = (1.0,1.0); 
 
	// arc negedge S --> (ZN:S) 
	 (negedge S => (ZN:S)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX3HDV0 ( Z, I0, I1, I2, S0, S1); 
input I0, I1, I2, S0, S1;
output Z;

    
  
  udp_mux4 u0 (Z, I0, I1, I2, I2, S0, S1);  
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0 && I2==1'b0) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b0 && I2==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b0) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

	ifnone
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 




 
	if(I0==1'b0 && I2==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I2==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

	ifnone
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 




 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 

	ifnone
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 




 
	if(I2==1'b0) 
	// arc posedge S0 --> (Z:S0) 
	 (posedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b0) 
	// arc negedge S0 --> (Z:S0) 
	 (negedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc posedge S0 --> (Z:S0) 
	 (posedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc negedge S0 --> (Z:S0) 
	 (negedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX3HDV1 ( Z, I0, I1, I2, S0, S1); 
input I0, I1, I2, S0, S1;
output Z;

    
  
  udp_mux4 u0 (Z, I0, I1, I2, I2, S0, S1);  
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0 && I2==1'b0) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b0 && I2==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b0) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

	ifnone
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 




 
	if(I0==1'b0 && I2==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I2==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

	ifnone
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 




 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 

	ifnone
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 




 
	if(I2==1'b0) 
	// arc posedge S0 --> (Z:S0) 
	 (posedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b0) 
	// arc negedge S0 --> (Z:S0) 
	 (negedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc posedge S0 --> (Z:S0) 
	 (posedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc negedge S0 --> (Z:S0) 
	 (negedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX3HDV2 ( Z, I0, I1, I2, S0, S1); 
input I0, I1, I2, S0, S1;
output Z;

    
  
  udp_mux4 u0 (Z, I0, I1, I2, I2, S0, S1);  
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0 && I2==1'b0) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b0 && I2==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b0) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

	ifnone
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 




 
	if(I0==1'b0 && I2==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I2==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

	ifnone
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 




 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 

	ifnone
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 




 
	if(I2==1'b0) 
	// arc posedge S0 --> (Z:S0) 
	 (posedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b0) 
	// arc negedge S0 --> (Z:S0) 
	 (negedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc posedge S0 --> (Z:S0) 
	 (posedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc negedge S0 --> (Z:S0) 
	 (negedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX3HDV4 ( Z, I0, I1, I2, S0, S1); 
input I0, I1, I2, S0, S1;
output Z;

    
  
  udp_mux4 u0 (Z, I0, I1, I2, I2, S0, S1);  
  
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0 && I2==1'b0) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b0 && I2==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b0) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

	ifnone
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 




 
	if(I0==1'b0 && I2==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I2==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

	ifnone
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 




 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 

	ifnone
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 




 
	if(I2==1'b0) 
	// arc posedge S0 --> (Z:S0) 
	 (posedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b0) 
	// arc negedge S0 --> (Z:S0) 
	 (negedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc posedge S0 --> (Z:S0) 
	 (posedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc negedge S0 --> (Z:S0) 
	 (negedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX3NHDV0 ( ZN, I0, I1, I2, S0, S1); 
input I0, I1, I2, S0, S1;
output ZN;

 
   udp_mux4 u0 (Z, I0, I1, I2, I2, S0, S1);  
   not u1(ZN,Z);
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0 && I2==1'b0) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b0 && I2==1'b1) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b0) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b1) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 

	ifnone 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 


 
	if(I0==1'b0 && I2==1'b0) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I2==1'b1) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b0) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b1) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 

	ifnone
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 



 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 

	ifnone
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 




 
	if(I2==1'b0) 
	// arc posedge S0 --> (ZN:S0) 
	 (posedge S0 => (ZN:S0)) = (1.0,1.0); 
 
	if(I2==1'b0) 
	// arc negedge S0 --> (ZN:S0) 
	 (negedge S0 => (ZN:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc posedge S0 --> (ZN:S0) 
	 (posedge S0 => (ZN:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc negedge S0 --> (ZN:S0) 
	 (negedge S0 => (ZN:S0)) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX3NHDV1 ( ZN, I0, I1, I2, S0, S1); 
input I0, I1, I2, S0, S1;
output ZN;

 
   udp_mux4 u0 (Z, I0, I1, I2, I2, S0, S1);  
   not u1(ZN,Z);
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0 && I2==1'b0) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b0 && I2==1'b1) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b0) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b1) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 

	ifnone 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 


 
	if(I0==1'b0 && I2==1'b0) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I2==1'b1) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b0) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b1) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 

	ifnone
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 



 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 

	ifnone
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 




 
	if(I2==1'b0) 
	// arc posedge S0 --> (ZN:S0) 
	 (posedge S0 => (ZN:S0)) = (1.0,1.0); 
 
	if(I2==1'b0) 
	// arc negedge S0 --> (ZN:S0) 
	 (negedge S0 => (ZN:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc posedge S0 --> (ZN:S0) 
	 (posedge S0 => (ZN:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc negedge S0 --> (ZN:S0) 
	 (negedge S0 => (ZN:S0)) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX3NHDV2 ( ZN, I0, I1, I2, S0, S1); 
input I0, I1, I2, S0, S1;
output ZN;

 
   udp_mux4 u0 (Z, I0, I1, I2, I2, S0, S1);  
   not u1(ZN,Z);
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0 && I2==1'b0) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b0 && I2==1'b1) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b0) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b1) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 

	ifnone 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 


 
	if(I0==1'b0 && I2==1'b0) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I2==1'b1) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b0) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b1) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 

	ifnone
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 



 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 

	ifnone
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 




 
	if(I2==1'b0) 
	// arc posedge S0 --> (ZN:S0) 
	 (posedge S0 => (ZN:S0)) = (1.0,1.0); 
 
	if(I2==1'b0) 
	// arc negedge S0 --> (ZN:S0) 
	 (negedge S0 => (ZN:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc posedge S0 --> (ZN:S0) 
	 (posedge S0 => (ZN:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc negedge S0 --> (ZN:S0) 
	 (negedge S0 => (ZN:S0)) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module MUX3NHDV4 ( ZN, I0, I1, I2, S0, S1); 
input I0, I1, I2, S0, S1;
output ZN;

 
   udp_mux4 u0 (Z, I0, I1, I2, I2, S0, S1);  
   not u1(ZN,Z);
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0 && I2==1'b0) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b0 && I2==1'b1) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b0) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b1) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 

	ifnone 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 


 
	if(I0==1'b0 && I2==1'b0) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I2==1'b1) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b0) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b1) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 

	ifnone
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 



 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 

	ifnone
	// arc I2 --> ZN 
	 (I2 => ZN) = (1.0,1.0); 




 
	if(I2==1'b0) 
	// arc posedge S0 --> (ZN:S0) 
	 (posedge S0 => (ZN:S0)) = (1.0,1.0); 
 
	if(I2==1'b0) 
	// arc negedge S0 --> (ZN:S0) 
	 (negedge S0 => (ZN:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc posedge S0 --> (ZN:S0) 
	 (posedge S0 => (ZN:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc negedge S0 --> (ZN:S0) 
	 (negedge S0 => (ZN:S0)) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> ZN 
	 (S1 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2BHDV0 ( ZN, A1, B1); 
input A1, B1;
output ZN;

    not  I1(OUT0, A1); 
    nand I0(ZN, OUT0, B1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2BHDV1 ( ZN, A1, B1); 
input A1, B1;
output ZN;

    not  I1(OUT0, A1); 
    nand I0(ZN, OUT0, B1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2BHDV12 ( ZN, A1, B1); 
input A1, B1;
output ZN;

    not  I1(OUT0, A1); 
    nand I0(ZN, OUT0, B1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2BHDV2 ( ZN, A1, B1); 
input A1, B1;
output ZN;

    not  I1(OUT0, A1); 
    nand I0(ZN, OUT0, B1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2BHDV4 ( ZN, A1, B1); 
input A1, B1;
output ZN;

    not  I1(OUT0, A1); 
    nand I0(ZN, OUT0, B1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2BHDV8 ( ZN, A1, B1); 
input A1, B1;
output ZN;

    not  I1(OUT0, A1); 
    nand I0(ZN, OUT0, B1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2BHDVL ( ZN, A1, B1); 
input A1, B1;
output ZN;

    not  I1(OUT0, A1); 
    nand I0(ZN, OUT0, B1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2HDV0 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2HDV1 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2HDV12 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2HDV16 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2HDV2 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2HDV4 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2HDV6 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2HDV8 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND2HDVL ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nand I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3BBHDV0 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

      not  I1(A1_inv, A1);
      not  I2(A2_inv, A2);
      and  I3(OUT0, A1_inv, A2_inv);		
      nand I0(ZN, OUT0, B); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3BBHDV1 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

      not  I1(A1_inv, A1);
      not  I2(A2_inv, A2);
      and  I3(OUT0, A1_inv, A2_inv);		
      nand I0(ZN, OUT0, B); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3BBHDV2 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

      not  I1(A1_inv, A1);
      not  I2(A2_inv, A2);
      and  I3(OUT0, A1_inv, A2_inv);		
      nand I0(ZN, OUT0, B); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3BBHDV4 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

      not  I1(A1_inv, A1);
      not  I2(A2_inv, A2);
      and  I3(OUT0, A1_inv, A2_inv);		
      nand I0(ZN, OUT0, B); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3BBHDV8 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

      not  I1(A1_inv, A1);
      not  I2(A2_inv, A2);
      and  I3(OUT0, A1_inv, A2_inv);		
      nand I0(ZN, OUT0, B); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3BBHDVL ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

      not  I1(A1_inv, A1);
      not  I2(A2_inv, A2);
      and  I3(OUT0, A1_inv, A2_inv);		
      nand I0(ZN, OUT0, B); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3BHDV0 ( ZN, A1, B1, B2); 
input A1, B1, B2;
output ZN;

      not  I1(A1_inv, A1); 	 
      nand I0(ZN, A1_inv, B1, B2); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3BHDV1 ( ZN, A1, B1, B2); 
input A1, B1, B2;
output ZN;

      not  I1(A1_inv, A1); 	 
      nand I0(ZN, A1_inv, B1, B2); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3BHDV2 ( ZN, A1, B1, B2); 
input A1, B1, B2;
output ZN;

      not  I1(A1_inv, A1); 	 
      nand I0(ZN, A1_inv, B1, B2); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3BHDV4 ( ZN, A1, B1, B2); 
input A1, B1, B2;
output ZN;

      not  I1(A1_inv, A1); 	 
      nand I0(ZN, A1_inv, B1, B2); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3BHDV8 ( ZN, A1, B1, B2); 
input A1, B1, B2;
output ZN;

      not  I1(A1_inv, A1); 	 
      nand I0(ZN, A1_inv, B1, B2); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3BHDVL ( ZN, A1, B1, B2); 
input A1, B1, B2;
output ZN;

      not  I1(A1_inv, A1); 	 
      nand I0(ZN, A1_inv, B1, B2); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3HDV0 ( ZN, A1, A2, A3); 
input A1, A2, A3;
output ZN;

 
      nand I0(ZN, A1, A2, A3); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3HDV1 ( ZN, A1, A2, A3); 
input A1, A2, A3;
output ZN;

 
      nand I0(ZN, A1, A2, A3); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3HDV12 ( ZN, A1, A2, A3); 
input A1, A2, A3;
output ZN;

 
      nand I0(ZN, A1, A2, A3); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3HDV2 ( ZN, A1, A2, A3); 
input A1, A2, A3;
output ZN;

 
      nand I0(ZN, A1, A2, A3); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3HDV4 ( ZN, A1, A2, A3); 
input A1, A2, A3;
output ZN;

 
      nand I0(ZN, A1, A2, A3); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3HDV8 ( ZN, A1, A2, A3); 
input A1, A2, A3;
output ZN;

 
      nand I0(ZN, A1, A2, A3); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND3HDVL ( ZN, A1, A2, A3); 
input A1, A2, A3;
output ZN;

 
      nand I0(ZN, A1, A2, A3); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4BBHDV0 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

   not  I1(A1_inv, A1);
   not  I2(A2_inv, A2);
   nand I0(ZN, A1_inv, A2_inv, B1, B2); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4BBHDV1 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

   not  I1(A1_inv, A1);
   not  I2(A2_inv, A2);
   nand I0(ZN, A1_inv, A2_inv, B1, B2); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4BBHDV2 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

   not  I1(A1_inv, A1);
   not  I2(A2_inv, A2);
   nand I0(ZN, A1_inv, A2_inv, B1, B2); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4BBHDV4 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

   not  I1(A1_inv, A1);
   not  I2(A2_inv, A2);
   nand I0(ZN, A1_inv, A2_inv, B1, B2); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4BBHDVL ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

   not  I1(A1_inv, A1);
   not  I2(A2_inv, A2);
   nand I0(ZN, A1_inv, A2_inv, B1, B2); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4BHDV0 ( ZN, A1, B1, B2, B3); 
input A1, B1, B2, B3;
output ZN;

   not  I1(A1_inv, A1);
   nand I0(ZN, A1_inv, B1, B2, B3); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	// arc B3 --> ZN
	 (B3 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4BHDV1 ( ZN, A1, B1, B2, B3); 
input A1, B1, B2, B3;
output ZN;

   not  I1(A1_inv, A1);
   nand I0(ZN, A1_inv, B1, B2, B3); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	// arc B3 --> ZN
	 (B3 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4BHDV2 ( ZN, A1, B1, B2, B3); 
input A1, B1, B2, B3;
output ZN;

   not  I1(A1_inv, A1);
   nand I0(ZN, A1_inv, B1, B2, B3); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	// arc B3 --> ZN
	 (B3 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4BHDV4 ( ZN, A1, B1, B2, B3); 
input A1, B1, B2, B3;
output ZN;

   not  I1(A1_inv, A1);
   nand I0(ZN, A1_inv, B1, B2, B3); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	// arc B3 --> ZN
	 (B3 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4BHDVL ( ZN, A1, B1, B2, B3); 
input A1, B1, B2, B3;
output ZN;

   not  I1(A1_inv, A1);
   nand I0(ZN, A1_inv, B1, B2, B3); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	// arc B3 --> ZN
	 (B3 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4HDV0 ( ZN, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output ZN;

 
   nand I0(ZN, A1, A2, A3, A4); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4HDV1 ( ZN, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output ZN;

 
   nand I0(ZN, A1, A2, A3, A4); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4HDV2 ( ZN, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output ZN;

 
   nand I0(ZN, A1, A2, A3, A4); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4HDV4 ( ZN, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output ZN;

 
   nand I0(ZN, A1, A2, A3, A4); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4HDV8 ( ZN, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output ZN;

 
   nand I0(ZN, A1, A2, A3, A4); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NAND4HDVL ( ZN, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output ZN;

 
   nand I0(ZN, A1, A2, A3, A4); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NDHDV0 ( Q, QN, CKN, D); 
input CKN, D;
output Q, QN;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
 
  not     IC (clk, CKN); 
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER); 
  buf     I1 (Q, n0); 
  not     I2 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CKN --> Q 
	(negedge CKN => (Q : D))  = (1.0,1.0); 
 
	// arc CKN --> QN 
	(negedge CKN => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CKN,1.0,0,NOTIFIER); 
 
        $width(posedge CKN,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CKN, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CKN, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NDHDV1 ( Q, QN, CKN, D); 
input CKN, D;
output Q, QN;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
 
  not     IC (clk, CKN); 
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER); 
  buf     I1 (Q, n0); 
  not     I2 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CKN --> Q 
	(negedge CKN => (Q : D))  = (1.0,1.0); 
 
	// arc CKN --> QN 
	(negedge CKN => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CKN,1.0,0,NOTIFIER); 
 
        $width(posedge CKN,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CKN, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CKN, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NDHDV2 ( Q, QN, CKN, D); 
input CKN, D;
output Q, QN;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
 
  not     IC (clk, CKN); 
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER); 
  buf     I1 (Q, n0); 
  not     I2 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CKN --> Q 
	(negedge CKN => (Q : D))  = (1.0,1.0); 
 
	// arc CKN --> QN 
	(negedge CKN => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CKN,1.0,0,NOTIFIER); 
 
        $width(posedge CKN,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CKN, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CKN, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NDHDV4 ( Q, QN, CKN, D); 
input CKN, D;
output Q, QN;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
 
  not     IC (clk, CKN); 
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER); 
  buf     I1 (Q, n0); 
  not     I2 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CKN --> Q 
	(negedge CKN => (Q : D))  = (1.0,1.0); 
 
	// arc CKN --> QN 
	(negedge CKN => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CKN,1.0,0,NOTIFIER); 
 
        $width(posedge CKN,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CKN, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CKN, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NDRNHDV0 (D, RDN, CKN, Q, QN); 
  input D, RDN, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RDN);
  not     IC (clk,CKN);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);
  
  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I6(ENABLE_RDN,RDN);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NDRNHDV1 (D, RDN, CKN, Q, QN); 
  input D, RDN, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RDN);
  not     IC (clk,CKN);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);
  
  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I6(ENABLE_RDN,RDN);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NDRNHDV2 (D, RDN, CKN, Q, QN); 
  input D, RDN, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RDN);
  not     IC (clk,CKN);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);
  
  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I6(ENABLE_RDN,RDN);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NDRNHDV4 (D, RDN, CKN, Q, QN); 
  input D, RDN, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RDN);
  not     IC (clk,CKN);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);
  
  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I6(ENABLE_RDN,RDN);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NDRSNHDV0 (D, RDN, SDN, CKN, Q, QN); 
  input D, RDN, SDN, CKN;

  output Q, QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf   XX0 (xSN,SDN);
  buf   XX1 (xRN,RDN);
  not     IC (clk,CKN);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;


  `ifdef functional // functional //

  `else // functional //
    and SMC_I7(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I8(ENABLE_SDN,SDN);

    buf SMC_I9(ENABLE_RDN,RDN);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NDRSNHDV1 (D, RDN, SDN, CKN, Q, QN); 
  input D, RDN, SDN, CKN;

  output Q, QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf   XX0 (xSN,SDN);
  buf   XX1 (xRN,RDN);
  not     IC (clk,CKN);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;


  `ifdef functional // functional //

  `else // functional //
    and SMC_I7(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I8(ENABLE_SDN,SDN);

    buf SMC_I9(ENABLE_RDN,RDN);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NDRSNHDV2 (D, RDN, SDN, CKN, Q, QN); 
  input D, RDN, SDN, CKN;

  output Q, QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf   XX0 (xSN,SDN);
  buf   XX1 (xRN,RDN);
  not     IC (clk,CKN);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;


  `ifdef functional // functional //

  `else // functional //
    and SMC_I7(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I8(ENABLE_SDN,SDN);

    buf SMC_I9(ENABLE_RDN,RDN);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NDRSNHDV4 (D, RDN, SDN, CKN, Q, QN); 
  input D, RDN, SDN, CKN;

  output Q, QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;

  buf   XX0 (xSN,SDN);
  buf   XX1 (xRN,RDN);
  not     IC (clk,CKN);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;


  `ifdef functional // functional //

  `else // functional //
    and SMC_I7(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I8(ENABLE_SDN,SDN);

    buf SMC_I9(ENABLE_RDN,RDN);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && RDN==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && RDN==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc RDN --> QN
	(negedge RDN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && RDN==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && RDN==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NDSNHDV0 (D, SDN, CKN, Q, QN); 
  input D, SDN, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  buf   XX0 (xSN,SDN);
  not     IC (clk,CKN);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_SDN,SDN);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NDSNHDV1 (D, SDN, CKN, Q, QN); 
  input D, SDN, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  buf   XX0 (xSN,SDN);
  not     IC (clk,CKN);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_SDN,SDN);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NDSNHDV2 (D, SDN, CKN, Q, QN); 
  input D, SDN, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  buf   XX0 (xSN,SDN);
  not     IC (clk,CKN);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_SDN,SDN);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NDSNHDV4 (D, SDN, CKN, Q, QN); 
  input D, SDN, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  buf   XX0 (xSN,SDN);
  not     IC (clk,CKN);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_SDN,SDN);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// arc SDN --> QN
	(negedge SDN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2BHDV0 ( ZN, A1, B1); 
input A1, B1;
output ZN;

    not I1(A1_inv, A1);
    nor I0(ZN, A1_inv, B1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2BHDV1 ( ZN, A1, B1); 
input A1, B1;
output ZN;

    not I1(A1_inv, A1);
    nor I0(ZN, A1_inv, B1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2BHDV12 ( ZN, A1, B1); 
input A1, B1;
output ZN;

    not I1(A1_inv, A1);
    nor I0(ZN, A1_inv, B1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2BHDV2 ( ZN, A1, B1); 
input A1, B1;
output ZN;

    not I1(A1_inv, A1);
    nor I0(ZN, A1_inv, B1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2BHDV4 ( ZN, A1, B1); 
input A1, B1;
output ZN;

    not I1(A1_inv, A1);
    nor I0(ZN, A1_inv, B1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2BHDV8 ( ZN, A1, B1); 
input A1, B1;
output ZN;

    not I1(A1_inv, A1);
    nor I0(ZN, A1_inv, B1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2BHDVL ( ZN, A1, B1); 
input A1, B1;
output ZN;

    not I1(A1_inv, A1);
    nor I0(ZN, A1_inv, B1); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2HDV0 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2HDV1 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2HDV12 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2HDV16 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2HDV2 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2HDV4 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2HDV6 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2HDV8 ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR2HDVL ( ZN, A1, A2); 
input A1, A2;
output ZN;

 
    nor I0(ZN, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3BBHDV0 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

   
   not  I1(A1_inv, A1);
   not  I2(A2_inv, A2);
   nor  I0(ZN, A1_inv, A2_inv, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
  	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3BBHDV1 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

   
   not  I1(A1_inv, A1);
   not  I2(A2_inv, A2);
   nor  I0(ZN, A1_inv, A2_inv, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
  	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3BBHDV2 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

   
   not  I1(A1_inv, A1);
   not  I2(A2_inv, A2);
   nor  I0(ZN, A1_inv, A2_inv, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
  	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3BBHDV4 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

   
   not  I1(A1_inv, A1);
   not  I2(A2_inv, A2);
   nor  I0(ZN, A1_inv, A2_inv, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
  	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3BBHDV8 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

   
   not  I1(A1_inv, A1);
   not  I2(A2_inv, A2);
   nor  I0(ZN, A1_inv, A2_inv, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
  	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3BBHDVL ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

   
   not  I1(A1_inv, A1);
   not  I2(A2_inv, A2);
   nor  I0(ZN, A1_inv, A2_inv, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
  	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3BHDV0 ( ZN, A1, B1, B2); 
input A1, B1, B2;
output ZN;

   not  I1(A1_inv, A1); 
   nor  I0(ZN, A1_inv, B1, B2); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3BHDV1 ( ZN, A1, B1, B2); 
input A1, B1, B2;
output ZN;

   not  I1(A1_inv, A1); 
   nor  I0(ZN, A1_inv, B1, B2); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3BHDV2 ( ZN, A1, B1, B2); 
input A1, B1, B2;
output ZN;

   not  I1(A1_inv, A1); 
   nor  I0(ZN, A1_inv, B1, B2); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3BHDV4 ( ZN, A1, B1, B2); 
input A1, B1, B2;
output ZN;

   not  I1(A1_inv, A1); 
   nor  I0(ZN, A1_inv, B1, B2); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3BHDV8 ( ZN, A1, B1, B2); 
input A1, B1, B2;
output ZN;

   not  I1(A1_inv, A1); 
   nor  I0(ZN, A1_inv, B1, B2); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3BHDVL ( ZN, A1, B1, B2); 
input A1, B1, B2;
output ZN;

   not  I1(A1_inv, A1); 
   nor  I0(ZN, A1_inv, B1, B2); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3HDV0 ( ZN, A1, A2, A3); 
input A1, A2, A3;
output ZN;

    
   nor  I0(ZN, A1, A2, A3); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3HDV1 ( ZN, A1, A2, A3); 
input A1, A2, A3;
output ZN;

    
   nor  I0(ZN, A1, A2, A3); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3HDV12 ( ZN, A1, A2, A3); 
input A1, A2, A3;
output ZN;

    
   nor  I0(ZN, A1, A2, A3); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3HDV2 ( ZN, A1, A2, A3); 
input A1, A2, A3;
output ZN;

    
   nor  I0(ZN, A1, A2, A3); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3HDV4 ( ZN, A1, A2, A3); 
input A1, A2, A3;
output ZN;

    
   nor  I0(ZN, A1, A2, A3); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3HDV8 ( ZN, A1, A2, A3); 
input A1, A2, A3;
output ZN;

    
   nor  I0(ZN, A1, A2, A3); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR3HDVL ( ZN, A1, A2, A3); 
input A1, A2, A3;
output ZN;

    
   nor  I0(ZN, A1, A2, A3); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR4BHDV0 ( ZN, A1, B1, B2, B3); 
input A1, B1, B2, B3;
output ZN;

   not I1(A1_inv, A1);
   nor I0(ZN, A1_inv, B1, B2, B3);    
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	// arc B3 --> ZN
	 (B3 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR4BHDV1 ( ZN, A1, B1, B2, B3); 
input A1, B1, B2, B3;
output ZN;

   not I1(A1_inv, A1);
   nor I0(ZN, A1_inv, B1, B2, B3);    
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	// arc B3 --> ZN
	 (B3 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR4BHDV2 ( ZN, A1, B1, B2, B3); 
input A1, B1, B2, B3;
output ZN;

   not I1(A1_inv, A1);
   nor I0(ZN, A1_inv, B1, B2, B3);    
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	// arc B3 --> ZN
	 (B3 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR4BHDV4 ( ZN, A1, B1, B2, B3); 
input A1, B1, B2, B3;
output ZN;

   not I1(A1_inv, A1);
   nor I0(ZN, A1_inv, B1, B2, B3);    
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	// arc B3 --> ZN
	 (B3 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR4HDV0 ( ZN, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output ZN;

 
   nor I0(ZN, A1, A2, A3, A4);    
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR4HDV1 ( ZN, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output ZN;

 
   nor I0(ZN, A1, A2, A3, A4);    
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR4HDV2 ( ZN, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output ZN;

 
   nor I0(ZN, A1, A2, A3, A4);    
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR4HDV4 ( ZN, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output ZN;

 
   nor I0(ZN, A1, A2, A3, A4);    
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR4HDV8 ( ZN, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output ZN;

 
   nor I0(ZN, A1, A2, A3, A4);    
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR4XXBBHDV0 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

 
  not (A1x, A1); 
  not (A2x, A2); 
  nor (ZN, A1x, A2x, B1, B2); 
 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR4XXBBHDV1 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

 
  not (A1x, A1); 
  not (A2x, A2); 
  nor (ZN, A1x, A2x, B1, B2); 
 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR4XXBBHDV2 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

 
  not (A1x, A1); 
  not (A2x, A2); 
  nor (ZN, A1x, A2x, B1, B2); 
 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module NOR4XXBBHDV4 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

 
  not (A1x, A1); 
  not (A2x, A2); 
  nor (ZN, A1x, A2x, B1, B2); 
 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA1B2HDV0 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

  not I2(A1_inv, A1);
  not I3(A2_inv, A2);
  and I1(OUT0, A1_inv, A2_inv);
  nor I0(Z, OUT0, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA1B2HDV1 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

  not I2(A1_inv, A1);
  not I3(A2_inv, A2);
  and I1(OUT0, A1_inv, A2_inv);
  nor I0(Z, OUT0, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA1B2HDV2 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

  not I2(A1_inv, A1);
  not I3(A2_inv, A2);
  and I1(OUT0, A1_inv, A2_inv);
  nor I0(Z, OUT0, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA1B2HDV4 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

  not I2(A1_inv, A1);
  not I3(A2_inv, A2);
  and I1(OUT0, A1_inv, A2_inv);
  nor I0(Z, OUT0, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA1B2HDV8 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

  not I2(A1_inv, A1);
  not I3(A2_inv, A2);
  and I1(OUT0, A1_inv, A2_inv);
  nor I0(Z, OUT0, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA1B2HDVL ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

  not I2(A1_inv, A1);
  not I3(A2_inv, A2);
  and I1(OUT0, A1_inv, A2_inv);
  nor I0(Z, OUT0, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA211HDV0 ( Z, A1, A2, B, C); 
input A1, A2, B, C;
output Z;

 
   or   I0(outA, A1, A2); 
   and  I1(Z, B, C, outA); 
  
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA211HDV1 ( Z, A1, A2, B, C); 
input A1, A2, B, C;
output Z;

 
   or   I0(outA, A1, A2); 
   and  I1(Z, B, C, outA); 
  
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA211HDV2 ( Z, A1, A2, B, C); 
input A1, A2, B, C;
output Z;

 
   or   I0(outA, A1, A2); 
   and  I1(Z, B, C, outA); 
  
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA211HDV4 ( Z, A1, A2, B, C); 
input A1, A2, B, C;
output Z;

 
   or   I0(outA, A1, A2); 
   and  I1(Z, B, C, outA); 
  
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA21HDV0 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
  or  I0(outA, A1, A2); 
  and I1(Z, outA, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA21HDV1 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
  or  I0(outA, A1, A2); 
  and I1(Z, outA, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA21HDV2 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
  or  I0(outA, A1, A2); 
  and I1(Z, outA, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA21HDV4 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
  or  I0(outA, A1, A2); 
  and I1(Z, outA, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA21HDV8 ( Z, A1, A2, B); 
input A1, A2, B;
output Z;

 
  or  I0(outA, A1, A2); 
  and I1(Z, outA, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA221HDV0 ( Z, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output Z;

   
   or  I0(outA, A1, A2);    
   or  I1(outB, B1, B2);    
   and I2(Z, outA, outB, C); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA221HDV1 ( Z, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output Z;

   
   or  I0(outA, A1, A2);    
   or  I1(outB, B1, B2);    
   and I2(Z, outA, outB, C); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA221HDV2 ( Z, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output Z;

   
   or  I0(outA, A1, A2);    
   or  I1(outB, B1, B2);    
   and I2(Z, outA, outB, C); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA221HDV4 ( Z, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output Z;

   
   or  I0(outA, A1, A2);    
   or  I1(outB, B1, B2);    
   and I2(Z, outA, outB, C); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA222HDV0 ( Z, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output Z;

    
   or  I0(outA, A1, A2); 
   or  I1(outB, B1, B2); 
   or  I2(outC, C1, C2); 
   and I3(Z, outA, outB, outC); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA222HDV1 ( Z, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output Z;

    
   or  I0(outA, A1, A2); 
   or  I1(outB, B1, B2); 
   or  I2(outC, C1, C2); 
   and I3(Z, outA, outB, outC); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA222HDV2 ( Z, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output Z;

    
   or  I0(outA, A1, A2); 
   or  I1(outB, B1, B2); 
   or  I2(outC, C1, C2); 
   and I3(Z, outA, outB, outC); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA222HDV4 ( Z, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output Z;

    
   or  I0(outA, A1, A2); 
   or  I1(outB, B1, B2); 
   or  I2(outC, C1, C2); 
   and I3(Z, outA, outB, outC); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA22HDV0 ( Z, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output Z;

 
  or  I0(outA, A1, A2); 
  or  I1(outB, B1, B2); 
  and I2(Z, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA22HDV1 ( Z, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output Z;

 
  or  I0(outA, A1, A2); 
  or  I1(outB, B1, B2); 
  and I2(Z, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA22HDV2 ( Z, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output Z;

 
  or  I0(outA, A1, A2); 
  or  I1(outB, B1, B2); 
  and I2(Z, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA22HDV4 ( Z, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output Z;

 
  or  I0(outA, A1, A2); 
  or  I1(outB, B1, B2); 
  and I2(Z, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA31HDV0 ( Z, A1, A2, A3, B); 
input A1, A2, A3, B;
output Z;

 
    or  I0(outA, A1, A2, A3); 
    and I1(Z, outA, B); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA31HDV1 ( Z, A1, A2, A3, B); 
input A1, A2, A3, B;
output Z;

 
    or  I0(outA, A1, A2, A3); 
    and I1(Z, outA, B); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA31HDV2 ( Z, A1, A2, A3, B); 
input A1, A2, A3, B;
output Z;

 
    or  I0(outA, A1, A2, A3); 
    and I1(Z, outA, B); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA31HDV4 ( Z, A1, A2, A3, B); 
input A1, A2, A3, B;
output Z;

 
    or  I0(outA, A1, A2, A3); 
    and I1(Z, outA, B); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA32HDV0 ( Z, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output Z;

    
  or  I0(outA, A1, A2, A3);  
  or  I1(outB, B1, B2); 
  and I2(Z, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA32HDV1 ( Z, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output Z;

    
  or  I0(outA, A1, A2, A3);  
  or  I1(outB, B1, B2); 
  and I2(Z, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA32HDV2 ( Z, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output Z;

    
  or  I0(outA, A1, A2, A3);  
  or  I1(outB, B1, B2); 
  and I2(Z, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA32HDV4 ( Z, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output Z;

    
  or  I0(outA, A1, A2, A3);  
  or  I1(outB, B1, B2); 
  and I2(Z, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA33HDV0 ( Z, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output Z;

 
    or  I0(outA, A1, A2, A3); 
    or  I1(outB, B1, B2, B3); 
    and I2(Z, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA33HDV1 ( Z, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output Z;

 
    or  I0(outA, A1, A2, A3); 
    or  I1(outB, B1, B2, B3); 
    and I2(Z, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA33HDV2 ( Z, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output Z;

 
    or  I0(outA, A1, A2, A3); 
    or  I1(outB, B1, B2, B3); 
    and I2(Z, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OA33HDV4 ( Z, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output Z;

 
    or  I0(outA, A1, A2, A3); 
    or  I1(outB, B1, B2, B3); 
    and I2(Z, outA, outB); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI211HDV0 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

 
  or   I0(outA, A1, A2); 
  nand I1(ZN, outA, B, C); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI211HDV1 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

 
  or   I0(outA, A1, A2); 
  nand I1(ZN, outA, B, C); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI211HDV2 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

 
  or   I0(outA, A1, A2); 
  nand I1(ZN, outA, B, C); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI211HDV4 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

 
  or   I0(outA, A1, A2); 
  nand I1(ZN, outA, B, C); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI211HDV8 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

 
  or   I0(outA, A1, A2); 
  nand I1(ZN, outA, B, C); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI211HDVL ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

 
  or   I0(outA, A1, A2); 
  nand I1(ZN, outA, B, C); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI21BHDV0 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

 
  
  or   I0(outB, B1, B2);
  not  I2(A_inv, A); 
  nand I1(ZN, outB, A_inv);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI21BHDV1 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

 
  
  or   I0(outB, B1, B2);
  not  I2(A_inv, A); 
  nand I1(ZN, outB, A_inv);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI21BHDV2 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

 
  
  or   I0(outB, B1, B2);
  not  I2(A_inv, A); 
  nand I1(ZN, outB, A_inv);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI21BHDV4 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

 
  
  or   I0(outB, B1, B2);
  not  I2(A_inv, A); 
  nand I1(ZN, outB, A_inv);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI21BHDV8 ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

 
  
  or   I0(outB, B1, B2);
  not  I2(A_inv, A); 
  nand I1(ZN, outB, A_inv);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI21BHDVL ( ZN, A, B1, B2); 
input A, B1, B2;
output ZN;

 
  
  or   I0(outB, B1, B2);
  not  I2(A_inv, A); 
  nand I1(ZN, outB, A_inv);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI21HDV0 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

 
  or   I0(outA, A1, A2); 
  nand I1(ZN, outA, B);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI21HDV1 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

 
  or   I0(outA, A1, A2); 
  nand I1(ZN, outA, B);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI21HDV12 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

 
  or   I0(outA, A1, A2); 
  nand I1(ZN, outA, B);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI21HDV2 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

 
  or   I0(outA, A1, A2); 
  nand I1(ZN, outA, B);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI21HDV4 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

 
  or   I0(outA, A1, A2); 
  nand I1(ZN, outA, B);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI21HDV8 ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

 
  or   I0(outA, A1, A2); 
  nand I1(ZN, outA, B);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI21HDVL ( ZN, A1, A2, B); 
input A1, A2, B;
output ZN;

 
  or   I0(outA, A1, A2); 
  nand I1(ZN, outA, B);   
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI221HDV0 ( ZN, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output ZN;

  
   or  I0(outA, A1, A2); 
   or  I1(outB, B1, B2); 
   nand I2(ZN, outA, outB, C); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI221HDV1 ( ZN, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output ZN;

  
   or  I0(outA, A1, A2); 
   or  I1(outB, B1, B2); 
   nand I2(ZN, outA, outB, C); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI221HDV2 ( ZN, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output ZN;

  
   or  I0(outA, A1, A2); 
   or  I1(outB, B1, B2); 
   nand I2(ZN, outA, outB, C); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI221HDV4 ( ZN, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output ZN;

  
   or  I0(outA, A1, A2); 
   or  I1(outB, B1, B2); 
   nand I2(ZN, outA, outB, C); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI221HDVL ( ZN, A1, A2, B1, B2, C); 
input A1, A2, B1, B2, C;
output ZN;

  
   or  I0(outA, A1, A2); 
   or  I1(outB, B1, B2); 
   nand I2(ZN, outA, outB, C); 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI222HDV0 ( ZN, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output ZN;

  
   or   I0(outA, A1, A2);    
   or   I1(outB, B1, B2);    
   or   I2(outC, C1, C2);    
   nand I3(ZN, outA, outB, outC); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI222HDV1 ( ZN, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output ZN;

  
   or   I0(outA, A1, A2);    
   or   I1(outB, B1, B2);    
   or   I2(outC, C1, C2);    
   nand I3(ZN, outA, outB, outC); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI222HDV2 ( ZN, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output ZN;

  
   or   I0(outA, A1, A2);    
   or   I1(outB, B1, B2);    
   or   I2(outC, C1, C2);    
   nand I3(ZN, outA, outB, outC); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI222HDV4 ( ZN, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output ZN;

  
   or   I0(outA, A1, A2);    
   or   I1(outB, B1, B2);    
   or   I2(outC, C1, C2);    
   nand I3(ZN, outA, outB, outC); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI222HDVL ( ZN, A1, A2, B1, B2, C1, C2); 
input A1, A2, B1, B2, C1, C2;
output ZN;

  
   or   I0(outA, A1, A2);    
   or   I1(outB, B1, B2);    
   or   I2(outC, C1, C2);    
   nand I3(ZN, outA, outB, outC); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI22BBHDV0 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

   not  I3(A1_inv, A1);
   not  I4(A2_inv, A2);
   or   I0(outA, A1_inv, A2_inv);  
   or   I1(outB, B1, B2);  
   nand I2(ZN, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI22BBHDV1 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

   not  I3(A1_inv, A1);
   not  I4(A2_inv, A2);
   or   I0(outA, A1_inv, A2_inv);  
   or   I1(outB, B1, B2);  
   nand I2(ZN, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI22BBHDV2 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

   not  I3(A1_inv, A1);
   not  I4(A2_inv, A2);
   or   I0(outA, A1_inv, A2_inv);  
   or   I1(outB, B1, B2);  
   nand I2(ZN, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI22BBHDV4 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

   not  I3(A1_inv, A1);
   not  I4(A2_inv, A2);
   or   I0(outA, A1_inv, A2_inv);  
   or   I1(outB, B1, B2);  
   nand I2(ZN, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI22BBHDVL ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

   not  I3(A1_inv, A1);
   not  I4(A2_inv, A2);
   or   I0(outA, A1_inv, A2_inv);  
   or   I1(outB, B1, B2);  
   nand I2(ZN, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI22HDV0 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

   
   or   I0(outA, A1, A2);  
   or   I1(outB, B1, B2);  
   nand I2(ZN, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI22HDV1 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

   
   or   I0(outA, A1, A2);  
   or   I1(outB, B1, B2);  
   nand I2(ZN, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI22HDV2 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

   
   or   I0(outA, A1, A2);  
   or   I1(outB, B1, B2);  
   nand I2(ZN, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI22HDV4 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

   
   or   I0(outA, A1, A2);  
   or   I1(outB, B1, B2);  
   nand I2(ZN, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI22HDV8 ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

   
   or   I0(outA, A1, A2);  
   or   I1(outB, B1, B2);  
   nand I2(ZN, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI22HDVL ( ZN, A1, A2, B1, B2); 
input A1, A2, B1, B2;
output ZN;

   
   or   I0(outA, A1, A2);  
   or   I1(outB, B1, B2);  
   nand I2(ZN, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI31HDV0 ( ZN, A1, A2, A3, B); 
input A1, A2, A3, B;
output ZN;

 
   or   I0(outA, A1, A2, A3);    
   nand I1(ZN, outA, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI31HDV1 ( ZN, A1, A2, A3, B); 
input A1, A2, A3, B;
output ZN;

 
   or   I0(outA, A1, A2, A3);    
   nand I1(ZN, outA, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI31HDV2 ( ZN, A1, A2, A3, B); 
input A1, A2, A3, B;
output ZN;

 
   or   I0(outA, A1, A2, A3);    
   nand I1(ZN, outA, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI31HDV4 ( ZN, A1, A2, A3, B); 
input A1, A2, A3, B;
output ZN;

 
   or   I0(outA, A1, A2, A3);    
   nand I1(ZN, outA, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI31HDV8 ( ZN, A1, A2, A3, B); 
input A1, A2, A3, B;
output ZN;

 
   or   I0(outA, A1, A2, A3);    
   nand I1(ZN, outA, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI31HDVL ( ZN, A1, A2, A3, B); 
input A1, A2, A3, B;
output ZN;

 
   or   I0(outA, A1, A2, A3);    
   nand I1(ZN, outA, B); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI32HDV0 ( ZN, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output ZN;

 
   or   I0(outA, A1, A2, A3); 
   or   I1(outB, B1, B2); 
   nand I2(ZN, outA, outB); 
 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI32HDV1 ( ZN, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output ZN;

 
   or   I0(outA, A1, A2, A3); 
   or   I1(outB, B1, B2); 
   nand I2(ZN, outA, outB); 
 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI32HDV2 ( ZN, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output ZN;

 
   or   I0(outA, A1, A2, A3); 
   or   I1(outB, B1, B2); 
   nand I2(ZN, outA, outB); 
 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI32HDV4 ( ZN, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output ZN;

 
   or   I0(outA, A1, A2, A3); 
   or   I1(outB, B1, B2); 
   nand I2(ZN, outA, outB); 
 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI32HDVL ( ZN, A1, A2, A3, B1, B2); 
input A1, A2, A3, B1, B2;
output ZN;

 
   or   I0(outA, A1, A2, A3); 
   or   I1(outB, B1, B2); 
   nand I2(ZN, outA, outB); 
 
    
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI33HDV0 ( ZN, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output ZN;

    
   or   I0(outA, A1, A2, A3); 
   or   I1(outB, B1, B2, B3); 
   nand I2(ZN, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI33HDV1 ( ZN, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output ZN;

    
   or   I0(outA, A1, A2, A3); 
   or   I1(outB, B1, B2, B3); 
   nand I2(ZN, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI33HDV2 ( ZN, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output ZN;

    
   or   I0(outA, A1, A2, A3); 
   or   I1(outB, B1, B2, B3); 
   nand I2(ZN, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI33HDV4 ( ZN, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output ZN;

    
   or   I0(outA, A1, A2, A3); 
   or   I1(outB, B1, B2, B3); 
   nand I2(ZN, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAI33HDVL ( ZN, A1, A2, A3, B1, B2, B3); 
input A1, A2, A3, B1, B2, B3;
output ZN;

    
   or   I0(outA, A1, A2, A3); 
   or   I1(outB, B1, B2, B3); 
   nand I2(ZN, outA, outB); 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> ZN 
	 (B3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAOI211HDV0 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

	not SMC_I0( A1_inv, A1 ); 
	not SMC_I1( A2_inv, A2 ); 
	not SMC_I2( C_inv, C ); 
	and SMC_I3( ZN_row1, A1_inv, A2_inv, C_inv ); 
	not SMC_I4( B_inv, B ); 
	and SMC_I5( ZN_row2, B_inv, C_inv ); 
	or SMC_I6( ZN, ZN_row1, ZN_row2 ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAOI211HDV1 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

	not SMC_I0( A1_inv, A1 ); 
	not SMC_I1( A2_inv, A2 ); 
	not SMC_I2( C_inv, C ); 
	and SMC_I3( ZN_row1, A1_inv, A2_inv, C_inv ); 
	not SMC_I4( B_inv, B ); 
	and SMC_I5( ZN_row2, B_inv, C_inv ); 
	or SMC_I6( ZN, ZN_row1, ZN_row2 ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAOI211HDV2 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

	not SMC_I0( A1_inv, A1 ); 
	not SMC_I1( A2_inv, A2 ); 
	not SMC_I2( C_inv, C ); 
	and SMC_I3( ZN_row1, A1_inv, A2_inv, C_inv ); 
	not SMC_I4( B_inv, B ); 
	and SMC_I5( ZN_row2, B_inv, C_inv ); 
	or SMC_I6( ZN, ZN_row1, ZN_row2 ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAOI211HDV4 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

	not SMC_I0( A1_inv, A1 ); 
	not SMC_I1( A2_inv, A2 ); 
	not SMC_I2( C_inv, C ); 
	and SMC_I3( ZN_row1, A1_inv, A2_inv, C_inv ); 
	not SMC_I4( B_inv, B ); 
	and SMC_I5( ZN_row2, B_inv, C_inv ); 
	or SMC_I6( ZN, ZN_row1, ZN_row2 ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAOI211HDV8 ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

	not SMC_I0( A1_inv, A1 ); 
	not SMC_I1( A2_inv, A2 ); 
	not SMC_I2( C_inv, C ); 
	and SMC_I3( ZN_row1, A1_inv, A2_inv, C_inv ); 
	not SMC_I4( B_inv, B ); 
	and SMC_I5( ZN_row2, B_inv, C_inv ); 
	or SMC_I6( ZN, ZN_row1, ZN_row2 ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OAOI211HDVL ( ZN, A1, A2, B, C); 
input A1, A2, B, C;
output ZN;

	not SMC_I0( A1_inv, A1 ); 
	not SMC_I1( A2_inv, A2 ); 
	not SMC_I2( C_inv, C ); 
	and SMC_I3( ZN_row1, A1_inv, A2_inv, C_inv ); 
	not SMC_I4( B_inv, B ); 
	and SMC_I5( ZN_row2, B_inv, C_inv ); 
	or SMC_I6( ZN, ZN_row1, ZN_row2 ); 

   `ifdef functional  //  functional //

   `else




   specify

	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR2HDV0 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    or (Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR2HDV1 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    or (Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR2HDV12 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    or (Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR2HDV2 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    or (Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR2HDV4 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    or (Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR2HDV8 ( Z, A1, A2); 
input A1, A2;
output Z;

 
    or (Z, A1, A2); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR3HDV0 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

 
    or (Z, A1, A2, A3); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR3HDV1 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

 
    or (Z, A1, A2, A3); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR3HDV2 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

 
    or (Z, A1, A2, A3); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR3HDV4 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

 
    or (Z, A1, A2, A3); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR3HDV8 ( Z, A1, A2, A3); 
input A1, A2, A3;
output Z;

 
    or (Z, A1, A2, A3); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR4HDV0 ( Z, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output Z;

 
    buf I0(OUT0, A4); 
    buf I1(OUT1, A2); 
    buf I2(OUT2, A3); 
    buf I3(OUT3, A1); 
    or  I4(Z, OUT0, OUT1, OUT2, OUT3); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	// arc A4 --> Z 
	 (A4 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR4HDV1 ( Z, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output Z;

 
    buf I0(OUT0, A4); 
    buf I1(OUT1, A2); 
    buf I2(OUT2, A3); 
    buf I3(OUT3, A1); 
    or  I4(Z, OUT0, OUT1, OUT2, OUT3); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	// arc A4 --> Z 
	 (A4 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR4HDV2 ( Z, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output Z;

 
    buf I0(OUT0, A4); 
    buf I1(OUT1, A2); 
    buf I2(OUT2, A3); 
    buf I3(OUT3, A1); 
    or  I4(Z, OUT0, OUT1, OUT2, OUT3); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	// arc A4 --> Z 
	 (A4 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module OR4HDV4 ( Z, A1, A2, A3, A4); 
input A1, A2, A3, A4;
output Z;

 
    buf I0(OUT0, A4); 
    buf I1(OUT1, A2); 
    buf I2(OUT2, A3); 
    buf I3(OUT3, A1); 
    or  I4(Z, OUT0, OUT1, OUT2, OUT3); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	// arc A4 --> Z 
	 (A4 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module PULLHD0 ( Z); 
output Z;

	assign Z = 1'b0; 

   `ifdef functional  //  functional //

   `else




   specify

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module PULLHD1 ( Z); 
output Z;

	assign Z = 1'b1; 

   `ifdef functional  //  functional //

   `else




   specify

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDGRNQHDV0 ( Q, CK, D, RN, SE, SI); 
input CK, D, RN, SE, SI;
output Q;

  reg NOTIFIER; 
  supply1 xSN; 
 
  buf   XX0 (xRN, RN); 
  udp_sedfft I0 (n0, D, CK, xRN, SI, SE, 1'b1, NOTIFIER); 
  buf        I1 (Q, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I7(ENABLE_NOT_SE, SE); 
 
 
    buf SMC_I9(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDGRNQHDV1 ( Q, CK, D, RN, SE, SI); 
input CK, D, RN, SE, SI;
output Q;

  reg NOTIFIER; 
  supply1 xSN; 
 
  buf   XX0 (xRN, RN); 
  udp_sedfft I0 (n0, D, CK, xRN, SI, SE, 1'b1, NOTIFIER); 
  buf        I1 (Q, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I7(ENABLE_NOT_SE, SE); 
 
 
    buf SMC_I9(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDGRNQHDV2 ( Q, CK, D, RN, SE, SI); 
input CK, D, RN, SE, SI;
output Q;

  reg NOTIFIER; 
  supply1 xSN; 
 
  buf   XX0 (xRN, RN); 
  udp_sedfft I0 (n0, D, CK, xRN, SI, SE, 1'b1, NOTIFIER); 
  buf        I1 (Q, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I7(ENABLE_NOT_SE, SE); 
 
 
    buf SMC_I9(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDGRNQHDV4 ( Q, CK, D, RN, SE, SI); 
input CK, D, RN, SE, SI;
output Q;

  reg NOTIFIER; 
  supply1 xSN; 
 
  buf   XX0 (xRN, RN); 
  udp_sedfft I0 (n0, D, CK, xRN, SI, SE, 1'b1, NOTIFIER); 
  buf        I1 (Q, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I7(ENABLE_NOT_SE, SE); 
 
 
    buf SMC_I9(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDGRNQNHDV0 ( QN, CK, D, RN, SE, SI); 
input CK, D, RN, SE, SI;
output QN;

  reg NOTIFIER; 
  supply1 xSN; 
 
  buf   XX0 (xRN, RN); 
  udp_sedfft I0 (n0, D, CK, xRN, SI, SE, 1'b1, NOTIFIER); 
  not        I2 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I10(ENABLE_NOT_SE, SE); 
 
    buf SMC_I11(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDGRNQNHDV1 ( QN, CK, D, RN, SE, SI); 
input CK, D, RN, SE, SI;
output QN;

  reg NOTIFIER; 
  supply1 xSN; 
 
  buf   XX0 (xRN, RN); 
  udp_sedfft I0 (n0, D, CK, xRN, SI, SE, 1'b1, NOTIFIER); 
  not        I2 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I10(ENABLE_NOT_SE, SE); 
 
    buf SMC_I11(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDGRNQNHDV2 ( QN, CK, D, RN, SE, SI); 
input CK, D, RN, SE, SI;
output QN;

  reg NOTIFIER; 
  supply1 xSN; 
 
  buf   XX0 (xRN, RN); 
  udp_sedfft I0 (n0, D, CK, xRN, SI, SE, 1'b1, NOTIFIER); 
  not        I2 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I10(ENABLE_NOT_SE, SE); 
 
    buf SMC_I11(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDGRNQNHDV4 ( QN, CK, D, RN, SE, SI); 
input CK, D, RN, SE, SI;
output QN;

  reg NOTIFIER; 
  supply1 xSN; 
 
  buf   XX0 (xRN, RN); 
  udp_sedfft I0 (n0, D, CK, xRN, SI, SE, 1'b1, NOTIFIER); 
  not        I2 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I10(ENABLE_NOT_SE, SE); 
 
    buf SMC_I11(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDGRSNQHDV0 ( Q, CK, D, RN, SE, SI, SN);    
input CK, D, RN, SE, SI, SN;
output Q;

  reg NOTIFIER; 
 
  buf   XX0 (xRN, RN); 
  not   XX1 (xSN, SN); 
  not   XX2 (xSE, SE); 
  buf   XX3 (clk, CK); 
  or    I0 (n0, D, xSN);  
  and   I1 (n1, SE, SI); 
  and   I2 (n2, n0, xSE, xRN); 
  or    I3 (n3, n1, n2); 
  udp_dff I4 (n4, n3, clk, 1'b1, 1'b1, NOTIFIER); 
  buf     I5 (Q, n4); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I10(SE_bar, SE); 
 
    and SMC_I11(ENABLE_RN_AND_NOT_SE, RN, SE_bar); 
 
    not SMC_I12(ENABLE_NOT_SE, SE); 
 
    buf SMC_I13(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDGRSNQHDV1 ( Q, CK, D, RN, SE, SI, SN);    
input CK, D, RN, SE, SI, SN;
output Q;

  reg NOTIFIER; 
 
  buf   XX0 (xRN, RN); 
  not   XX1 (xSN, SN); 
  not   XX2 (xSE, SE); 
  buf   XX3 (clk, CK); 
  or    I0 (n0, D, xSN);  
  and   I1 (n1, SE, SI); 
  and   I2 (n2, n0, xSE, xRN); 
  or    I3 (n3, n1, n2); 
  udp_dff I4 (n4, n3, clk, 1'b1, 1'b1, NOTIFIER); 
  buf     I5 (Q, n4); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I10(SE_bar, SE); 
 
    and SMC_I11(ENABLE_RN_AND_NOT_SE, RN, SE_bar); 
 
    not SMC_I12(ENABLE_NOT_SE, SE); 
 
    buf SMC_I13(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDGRSNQHDV2 ( Q, CK, D, RN, SE, SI, SN);    
input CK, D, RN, SE, SI, SN;
output Q;

  reg NOTIFIER; 
 
  buf   XX0 (xRN, RN); 
  not   XX1 (xSN, SN); 
  not   XX2 (xSE, SE); 
  buf   XX3 (clk, CK); 
  or    I0 (n0, D, xSN);  
  and   I1 (n1, SE, SI); 
  and   I2 (n2, n0, xSE, xRN); 
  or    I3 (n3, n1, n2); 
  udp_dff I4 (n4, n3, clk, 1'b1, 1'b1, NOTIFIER); 
  buf     I5 (Q, n4); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I10(SE_bar, SE); 
 
    and SMC_I11(ENABLE_RN_AND_NOT_SE, RN, SE_bar); 
 
    not SMC_I12(ENABLE_NOT_SE, SE); 
 
    buf SMC_I13(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDGRSNQHDV4 ( Q, CK, D, RN, SE, SI, SN);    
input CK, D, RN, SE, SI, SN;
output Q;

  reg NOTIFIER; 
 
  buf   XX0 (xRN, RN); 
  not   XX1 (xSN, SN); 
  not   XX2 (xSE, SE); 
  buf   XX3 (clk, CK); 
  or    I0 (n0, D, xSN);  
  and   I1 (n1, SE, SI); 
  and   I2 (n2, n0, xSE, xRN); 
  or    I3 (n3, n1, n2); 
  udp_dff I4 (n4, n3, clk, 1'b1, 1'b1, NOTIFIER); 
  buf     I5 (Q, n4); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I10(SE_bar, SE); 
 
    and SMC_I11(ENABLE_RN_AND_NOT_SE, RN, SE_bar); 
 
    not SMC_I12(ENABLE_NOT_SE, SE); 
 
    buf SMC_I13(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDGRSNQNHDV0 ( QN, CK, D, RN, SE, SI, SN);    
input CK, D, RN, SE, SI, SN;
output QN;

  reg NOTIFIER; 
 
  buf   XX0 (xRN, RN); 
  not   XX1 (xSN, SN); 
  not   XX2 (xSE, SE); 
  buf   XX3 (clk, CK); 
  or    I0 (n0, D, xSN);  
  and   I1 (n1, SE, SI); 
  and   I2 (n2, n0, xSE, xRN); 
  or    I3 (n3, n1, n2); 
  udp_dff I4 (n4, n3, clk, 1'b1, 1'b1, NOTIFIER); 
  not     I6 (QN, n4); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I10(SE_bar, SE); 
 
    and SMC_I11(ENABLE_RN_AND_NOT_SE, RN, SE_bar); 
 
    not SMC_I12(ENABLE_NOT_SE, SE); 
 
    buf SMC_I13(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDGRSNQNHDV1 ( QN, CK, D, RN, SE, SI, SN);    
input CK, D, RN, SE, SI, SN;
output QN;

  reg NOTIFIER; 
 
  buf   XX0 (xRN, RN); 
  not   XX1 (xSN, SN); 
  not   XX2 (xSE, SE); 
  buf   XX3 (clk, CK); 
  or    I0 (n0, D, xSN);  
  and   I1 (n1, SE, SI); 
  and   I2 (n2, n0, xSE, xRN); 
  or    I3 (n3, n1, n2); 
  udp_dff I4 (n4, n3, clk, 1'b1, 1'b1, NOTIFIER); 
  not     I6 (QN, n4); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I10(SE_bar, SE); 
 
    and SMC_I11(ENABLE_RN_AND_NOT_SE, RN, SE_bar); 
 
    not SMC_I12(ENABLE_NOT_SE, SE); 
 
    buf SMC_I13(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDGRSNQNHDV2 ( QN, CK, D, RN, SE, SI, SN);    
input CK, D, RN, SE, SI, SN;
output QN;

  reg NOTIFIER; 
 
  buf   XX0 (xRN, RN); 
  not   XX1 (xSN, SN); 
  not   XX2 (xSE, SE); 
  buf   XX3 (clk, CK); 
  or    I0 (n0, D, xSN);  
  and   I1 (n1, SE, SI); 
  and   I2 (n2, n0, xSE, xRN); 
  or    I3 (n3, n1, n2); 
  udp_dff I4 (n4, n3, clk, 1'b1, 1'b1, NOTIFIER); 
  not     I6 (QN, n4); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I10(SE_bar, SE); 
 
    and SMC_I11(ENABLE_RN_AND_NOT_SE, RN, SE_bar); 
 
    not SMC_I12(ENABLE_NOT_SE, SE); 
 
    buf SMC_I13(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDGRSNQNHDV4 ( QN, CK, D, RN, SE, SI, SN);    
input CK, D, RN, SE, SI, SN;
output QN;

  reg NOTIFIER; 
 
  buf   XX0 (xRN, RN); 
  not   XX1 (xSN, SN); 
  not   XX2 (xSE, SE); 
  buf   XX3 (clk, CK); 
  or    I0 (n0, D, xSN);  
  and   I1 (n1, SE, SI); 
  and   I2 (n2, n0, xSE, xRN); 
  or    I3 (n3, n1, n2); 
  udp_dff I4 (n4, n3, clk, 1'b1, 1'b1, NOTIFIER); 
  not     I6 (QN, n4); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I10(SE_bar, SE); 
 
    and SMC_I11(ENABLE_RN_AND_NOT_SE, RN, SE_bar); 
 
    not SMC_I12(ENABLE_NOT_SE, SE); 
 
    buf SMC_I13(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDQHDV0 ( Q, CK, D, SE, SI); 
input CK, D, SE, SI;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER); 
  udp_mux I1 (n1, D, SI, SE); 
  buf     I2 (Q, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I4(ENABLE_NOT_SE, SE); 
 
    buf SMC_I5(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDQHDV1 ( Q, CK, D, SE, SI); 
input CK, D, SE, SI;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER); 
  udp_mux I1 (n1, D, SI, SE); 
  buf     I2 (Q, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I4(ENABLE_NOT_SE, SE); 
 
    buf SMC_I5(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDQHDV2 ( Q, CK, D, SE, SI); 
input CK, D, SE, SI;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER); 
  udp_mux I1 (n1, D, SI, SE); 
  buf     I2 (Q, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I4(ENABLE_NOT_SE, SE); 
 
    buf SMC_I5(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDQHDV4 ( Q, CK, D, SE, SI); 
input CK, D, SE, SI;
output Q;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER); 
  udp_mux I1 (n1, D, SI, SE); 
  buf     I2 (Q, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I4(ENABLE_NOT_SE, SE); 
 
    buf SMC_I5(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDQNHDV0 ( QN, CK, D, SE, SI); 
input CK, D, SE, SI;
output QN;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER); 
  udp_mux I1 (n1, D, SI, SE); 

  not     I3 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I6(ENABLE_NOT_SE, SE); 
 
    buf SMC_I7(ENABLE_SE, SE); 
 
 
  specify 
 
 

	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDQNHDV1 ( QN, CK, D, SE, SI); 
input CK, D, SE, SI;
output QN;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER); 
  udp_mux I1 (n1, D, SI, SE); 

  not     I3 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I6(ENABLE_NOT_SE, SE); 
 
    buf SMC_I7(ENABLE_SE, SE); 
 
 
  specify 
 
 

	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDQNHDV2 ( QN, CK, D, SE, SI); 
input CK, D, SE, SI;
output QN;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER); 
  udp_mux I1 (n1, D, SI, SE); 

  not     I3 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I6(ENABLE_NOT_SE, SE); 
 
    buf SMC_I7(ENABLE_SE, SE); 
 
 
  specify 
 
 

	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDQNHDV4 ( QN, CK, D, SE, SI); 
input CK, D, SE, SI;
output QN;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
 
 
  buf     IC (clk, CK); 
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER); 
  udp_mux I1 (n1, D, SI, SE); 

  not     I3 (QN, n0); 
 
 
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I6(ENABLE_NOT_SE, SE); 
 
    buf SMC_I7(ENABLE_SE, SE); 
 
 
  specify 
 
 

	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine
module SDRNQHDV0 (D, RDN, SE, SI, CK, Q); 
  input D, RDN, SE, SI, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI;

  buf   XX0 (xRN,RDN);
  buf     IC (clk,CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1,D,SI,SE);
  buf     I2 (Q, n0);

  assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI=(D&!SE | SE&SI)? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    not SMC_I4(SE_bar,SE);
    and SMC_I5(ENABLE_RDN_AND_NOT_SE,RDN, SE_bar);

    buf SMC_I6(ENABLE_RDN,RDN);

    and SMC_I7(ENABLE_RDN_AND_SE,RDN,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), posedge RDN &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge SE &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


