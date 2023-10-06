`timescale 1ns/100ps

// `define win 1

`ifdef win
    `define ireal "d:/project/ASIC/FFT_IFFT_IP/user/sim/test/in/real.vec"
    `define iimag "d:/project/ASIC/FFT_IFFT_IP/user/sim/test/in/imag.vec"
    `define oreal "d:/project/ASIC/FFT_IFFT_IP/user/sim/test/out/real.vec"
    `define oimag "d:/project/ASIC/FFT_IFFT_IP/user/sim/test/out/imag.vec"
`else
    `define ireal "/home/project/ASIC/FFT_IFFT_IP/user/sim/test/in/real.vec"
    `define iimag "/home/project/ASIC/FFT_IFFT_IP/user/sim/test/in/imag.vec"
    `define oreal "/home/project/ASIC/FFT_IFFT_IP/user/sim/test/out/real.vec"
    `define oimag "/home/project/ASIC/FFT_IFFT_IP/user/sim/test/out/imag.vec"
`endif

module top_tb();

    localparam FFT_STAGE = 11;
    localparam FFT_MAX = 1<<FFT_STAGE;
    localparam IEN_TIME = FFT_MAX*20;

    reg  CLK = 0;
    reg  RSTN = 0;

    reg  IEN = 0;
    reg  [11:0] IREAL = 0;
    reg  [11:0] IIMAG = 0;

    wire OEN;
    wire CS;
    wire SCK;
    wire MOSI;
    wire [11:0] OREAL;
    wire [11:0] OIMAG;

    reg [11:0] Ireal_r [FFT_MAX-1:0];
    reg [11:0] Iimag_r [FFT_MAX-1:0];

    initial begin
        $sdf_annotate("/home/project/ASIC/FFT_IFFT_IP/user/sim/tb_file/top_scan_lt_cbest_m40c.sdf", u_top);  
    end
    initial	begin		
        CLK <= 1'b0;
        IEN <= 1'b0;
        RSTN <= 1'b0;
        #20 RSTN <= 1'b1;

        forever
            #2.5 CLK = ~CLK;
    end

    integer index = 0;
    integer count = 0;
    initial begin
        $readmemb(`ireal, Ireal_r);
        $readmemb(`iimag, Iimag_r);
        #1092 
        IEN = 1'b1;
        repeat(2000) begin
            for(index=0; index<FFT_MAX; index=index+1) begin
                #5
                IREAL <= Ireal_r[index];
                IIMAG <= Iimag_r[index];
            end
            count = count + 1;
            // $display("%d", count);
            if (count == 1500) begin
                $finish;
            end
        end
    end

    integer wre, wim;
    initial begin
        wre = $fopen(`oreal);
        wim = $fopen(`oimag);
    end

    // only print first FFT output    
    always @(posedge CLK) begin
        if (RSTN && OEN && (count<1)) begin        
            $fdisplay(wre, "%d", $signed(OREAL));
            $fdisplay(wim, "%d", $signed(OIMAG));
        end
    end

    top u_top(
        //ports
        .CLK     		( CLK     		),
        .RSTN    		( RSTN    		),
        .SEN            ( 1'b0          ),
        .SMODE          ( 1'b0          ),
        .IEN     		( IEN     		),
        .IREAL0  		( IREAL[0]  	),
        .IREAL1  		( IREAL[1]  	),
        .IREAL2  		( IREAL[2]  	),
        .IREAL3  		( IREAL[3]  	),
        .IREAL4  		( IREAL[4]  	),
        .IREAL5  		( IREAL[5]  	),
        .IREAL6  		( IREAL[6]  	),
        .IREAL7  		( IREAL[7]  	),
        .IREAL8  		( IREAL[8]  	),
        .IREAL9  		( IREAL[9]  	),
        .IREAL10 		( IREAL[10] 	),
        .IREAL11 		( IREAL[11] 	),
        .IIMAG0  		( IIMAG[0]  	),
        .IIMAG1  		( IIMAG[1]  	),
        .IIMAG2  		( IIMAG[2]  	),
        .IIMAG3  		( IIMAG[3]  	),
        .IIMAG4  		( IIMAG[4]  	),
        .IIMAG5  		( IIMAG[5]  	),
        .IIMAG6  		( IIMAG[6]  	),
        .IIMAG7  		( IIMAG[7]  	),
        .IIMAG8  		( IIMAG[8]  	),
        .IIMAG9  		( IIMAG[9]  	),
        .IIMAG10 		( IIMAG[10] 	),
        .IIMAG11 		( IIMAG[11] 	),
        .OEN     		( OEN     		),
        .OREAL0  		( OREAL[0]  	),
        .OREAL1  		( OREAL[1]  	),
        .OREAL2  		( OREAL[2]  	),
        .OREAL3  		( OREAL[3]  	),
        .OREAL4  		( OREAL[4]  	),
        .OREAL5  		( OREAL[5]  	),
        .OREAL6  		( OREAL[6]  	),
        .OREAL7  		( OREAL[7]  	),
        .OREAL8  		( OREAL[8]  	),
        .OREAL9  		( OREAL[9]  	),
        .OREAL10 		( OREAL[10] 	),
        .OREAL11 		( OREAL[11] 	),
        .OIMAG0  		( OIMAG[0]  	),
        .OIMAG1  		( OIMAG[1]  	),
        .OIMAG2  		( OIMAG[2]  	),
        .OIMAG3  		( OIMAG[3]  	),
        .OIMAG4  		( OIMAG[4]  	),
        .OIMAG5  		( OIMAG[5]  	),
        .OIMAG6  		( OIMAG[6]  	),
        .OIMAG7  		( OIMAG[7]  	),
        .OIMAG8  		( OIMAG[8]  	),
        .OIMAG9  		( OIMAG[9]  	),
        .OIMAG10 		( OIMAG[10] 	),
        .OIMAG11 		( OIMAG[11] 	),
        .CS      		( CS      		),
        .SCK     		( SCK     		),
        .MOSI    		( MOSI    		)
    );

    receive u_receive(
        //ports
        .iclk 		( CLK 		),
        .rstn 		( RSTN 		),
        
        .CS   		( CS   		),
        .SCK  		( SCK  		),
        .MOSI 		( MOSI 		)
    );


endmodule
