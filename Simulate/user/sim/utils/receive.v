module receive (
        input iclk,
        input rstn,
        
        input CS,
        input SCK,
        input MOSI
    );

    wire finish;
    wire [7:0] out;

    SPI_S2M u_SPI_S2M(
        //ports
        .iclk   		( iclk   		),
        .rstn   		( rstn   		),
        .CS     		( CS     		),
        .SCK    		( SCK    		),
        .MOSI   		( MOSI   		),
        .finish 		( finish 		),
        .out    		( out    		)
    );

    reg [47:0] data;
    reg [10:0] addr;
    reg [10:0] index;
    always @(posedge iclk or negedge rstn) begin
        if(!rstn) begin
            addr <= 0;
            data <= 0;
            index <= 0;
        end
        else begin
            if (finish) begin
                if (index == 5) begin
                    index <= 0;
                    $display("%d", data);
                end
                else begin
                    index <= index + 1'b1;
                end
                case (index)
                    0 : begin data[7:0] <= out; end
                    1 : begin data[15:8] <= out; end
                    2 : begin data[23:16] <= out; end
                    3 : begin data[31:24] <= out; end
                    4 : begin data[39:32] <= out; end
                    5 : begin data[47:39] <= out; end
                endcase
            end
        end
    end


endmodule //receive
