module top(
        input clk,
        input rst
    );

    wire [63:0] 	pc;
    wire [63:0] 	next_pc;
    wire [63:0] 	inst;
    wire [63:0] 	next_inst;
    wire        	wen;
    wire        	en_imm;
    wire [63:0] 	imm;
    wire [3:0]  	raddr1;
    wire [3:0]  	raddr2;
    wire [3:0]  	waddr;
    wire [63:0] 	alu_result;

// An ERROR Template Auto generated
    // outports wire
    wire [DATA_WIDTH-1:0] 	dout;

    Reg u_Reg#(
        .DATA_WIDTH 	( 1  ),
        .RESET_VAL  	( 0  )
    )
    (
        .clk  	( clk   ),
        .rst  	( rst   ),
        .din  	( din   ),
        .dout 	( dout  )
    );
// =========================================

    PC u_PC(
        .clk     	( clk      ),
        .rst     	( rst      ),
        .next_pc 	( next_pc  ),
        .pc      	( pc       )
    );

    InstFetch u_InstFetch(
        .clk       	( clk        ),
        .rst       	( rst        ),
        .next_inst 	( next_inst  ),
        .inst      	( inst       )
    );

    ram #(
        .ADDR_WIDTH(5   ),
        .DATA_WIDTH(64  ) 
    ) u_ram (
        .clk    ( clk         ),
        .addr   ( pc          ),
        .data   ( next_inst   )
    );

    Decode u_Decode(
        .clk    	( clk     ),
        .rst    	( rst     ),
        .inst   	( inst    ),
        .wen    	( wen     ),
        .en_imm 	( en_imm  ),
        .imm    	( imm     ),
        .raddr1 	( raddr1  ),
        .raddr2 	( raddr2  ),
        .waddr  	( waddr   )
    );

    RegFile #(
        .ADDR_WIDTH(5   ),
        .DATA_WIDTH(64  )
    ) u_reg (
        .clk        ( clk           ),
        .raddr1     ( raddr1        ),
        .raddr2     ( raddr2        ),
        .wdata      ( alu_result    ),
        .waddr      ( waddr         ),
        .wen        ( wen           ),
        .rdata1     ( rdata1        ),
        .rdata2     ( rdata2        )
    );

    Alu u_Alu(
        .src1       	( rdata1      ),
        .src2       	( rdata2      ),
        .imm        	( imm         ),
        .en_imm     	( en_imm      ),
        .alu_result 	( alu_result  )
    );

    assign next_pc = pc + 4;

endmodule //top
