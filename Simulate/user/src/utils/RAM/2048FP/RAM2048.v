module RAM2048 (
    // read ports
    input           CLKA,
    input           CENA,
    input  [10:0]   AA,
    output [47:0]   QA,

    // write ports
    input           CLKB,
    input           CENB,
    input  [10:0]   AB,
    input  [47:0]   DB
);

wire [47:0] odata0;
wire [47:0] odata1;
wire [47:0] odata2;
wire [47:0] odata3;

wire [3:0]  ena;
wire [3:0]  enb;

reg  [1:0]  r_AA;

always @(posedge CLKA) begin
	r_AA <= AA[10:9];
end

wire [1:0] ram_sel;

assign ram_sel = (AA[10:9] == r_AA) ? AA[10:9] : r_AA;

assign QA = (ram_sel == 2'b00) ? odata0 :
            (ram_sel == 2'b01) ? odata1 :
            (ram_sel == 2'b10) ? odata2 :
            (ram_sel == 2'b11) ? odata3 : 0;

assign ena = (AA[10:9] == 2'b00) ? {1'b1, 1'b1, 1'b1, CENA} :
             (AA[10:9] == 2'b01) ? {1'b1, 1'b1, CENA, 1'b1} :
             (AA[10:9] == 2'b10) ? {1'b1, CENA, 1'b1, 1'b1} :
             (AA[10:9] == 2'b11) ? {CENA, 1'b1, 1'b1, 1'b1} : 0;

assign enb = (AB[10:9] == 2'b00) ? {1'b1, 1'b1, 1'b1, CENB} :
             (AB[10:9] == 2'b01) ? {1'b1, 1'b1, CENB, 1'b1} :
             (AB[10:9] == 2'b10) ? {1'b1, CENB, 1'b1, 1'b1} :
             (AB[10:9] == 2'b11) ? {CENB, 1'b1, 1'b1, 1'b1} : 0;
FRAM512 u0_FRAM512(
	//ports
	.CLKA 		( CLKA 		),
	.CENA 		( ena[0] 	),
	.AA   		( AA[8:0]	),
	.QA   		( odata0   	),

	.CLKB 		( CLKB 		),
	.CENB 		( enb[0] 	),
	.AB   		( AB[8:0]	),
	.DB   		( DB       	)
);

FRAM512 u1_FRAM512(
	//ports
	.CLKA 		( CLKA 		),
	.CENA 		( ena[1] 	),
	.AA   		( AA[8:0]	),
	.QA   		( odata1   	),

	.CLKB 		( CLKB 		),
	.CENB 		( enb[1] 	),
	.AB   		( AB[8:0]	),
	.DB   		( DB       	)
);

FRAM512 u2_FRAM512(
	//ports
	.CLKA 		( CLKA 		),
	.CENA 		( ena[2] 	),
	.AA   		( AA[8:0]	),
	.QA   		( odata2   	),

	.CLKB 		( CLKB 		),
	.CENB 		( enb[2] 	),
	.AB   		( AB[8:0]	),
	.DB   		( DB       	)
);

FRAM512 u3_FRAM512(
	//ports
	.CLKA 		( CLKA 		),
	.CENA 		( ena[3] 	),
	.AA   		( AA[8:0]	),
	.QA   		( odata3   	),

	.CLKB 		( CLKB 		),
	.CENB 		( enb[3] 	),
	.AB   		( AB[8:0]	),
	.DB   		( DB       	)
);

endmodule //RAM2048
