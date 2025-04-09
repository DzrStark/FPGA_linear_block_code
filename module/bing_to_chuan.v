module parallel_to_serial (
    input wire [6:0] hm_out,
    input wire clk,
    output reg chuan
);

    reg [2:0] counter;  // 用于计数，范围 0 到 6

    initial begin
        counter = 3'b000;
        chuan = 1'b0;
    end

    always @(posedge clk) begin
        case (counter)
            3'b000: chuan <= hm_out[6];
            3'b001: chuan <= hm_out[5];
            3'b010: chuan <= hm_out[4];
            3'b011: chuan <= hm_out[3];
            3'b100: chuan <= hm_out[2];
            3'b101: chuan <= hm_out[1];
            3'b110: chuan <= hm_out[0];
            default: chuan <= 1'b0;
        endcase

        if (counter == 3'b110) begin
            counter <= 3'b000;
        end else begin
            counter <= counter + 1;
        end
    end

endmodule    