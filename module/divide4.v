module divider4(
    input clk,
    output reg clk_out
);

    reg [31:0] cnt;
    localparam cnt_num = 2;

    always @(posedge clk) begin
        if (cnt < cnt_num - 1'd1) begin
            cnt <= cnt + 1'd1;
        end else begin
            cnt <= 32'd0;
            clk_out <= ~clk_out;
        end
    end

endmodule
