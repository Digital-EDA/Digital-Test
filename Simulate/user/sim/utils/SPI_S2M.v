//从机接收MOSI的数据 在上升沿的时候采样数据
module SPI_S2M(
        input iclk,
        input rstn,

        input CS,
        input SCK,
        input MOSI,

        output finish,
        output [7:0] out
    );

    localparam D7 = 4'd0;
    localparam D6 = 4'd1;
    localparam D5 = 4'd2;
    localparam D4 = 4'd3;
    localparam D3 = 4'd4;
    localparam D2 = 4'd5;
    localparam D1 = 4'd6;
    localparam D0 = 4'd7;
    
    reg rfinish;
    reg [7:0] rec = 8'd0;
    reg [3:0] state = 4'd0;

    assign out = rec;
    assign finish = rfinish;
    
    reg  gate;
    reg  gate_buf;
    reg  mosi_buf;
    wire gate_pose = gate & ~gate_buf;
    always@(posedge iclk or negedge rstn) begin
        if(!rstn) begin
            gate <= 0;
            gate_buf <= 0;
            mosi_buf <= 0;
        end
        else begin
            gate <= SCK;
            gate_buf <= gate;
            mosi_buf <= MOSI;
        end
    end

    always @(posedge iclk or negedge rstn) begin
        if(!rstn) begin
            rec <= 0;
            state <= 0;
            rfinish <= 0;
        end
        else begin
            if (gate_pose) begin
                case(state)
                    D7: begin
                        rec[7] <= mosi_buf;
                        state<= D6;
                    end
                    D6: begin
                        rec[6] <= mosi_buf;
                        state<= D5;
                    end
                    D5: begin
                        rec[5] <= mosi_buf;
                        state<= D4;
                    end
                    D4: begin
                        rec[4] <= mosi_buf;
                        state<= D3;
                    end
                    D3: begin
                        rec[3] <= mosi_buf;
                        state<= D2;
                    end
                    D2: begin
                        rec[2] <= mosi_buf;
                        state<= D1;
                    end
                    D1: begin
                        rec[1] <= mosi_buf;
                        state<= D0;
                    end
                    D0: begin
                        rec[0] <= mosi_buf;
                        state<= D7;
                        rfinish <= 1'b1;
                    end
                    default: begin
                        state<= D7;
                    end
                endcase
            end
            else begin
                rfinish <= 1'b0;
            end
        end
    end

endmodule
