module chuanbing (
    input clk28,
    input mxulie,
    output reg [3:0] b
);

    reg [3:0] temp;
    integer counter = 0;

    always @(posedge clk28) begin
        if (counter == 4) begin
            b <= temp;
            counter = 0;
        end
        temp[3 - counter] <= mxulie;
        counter = counter + 1;
    end

endmodule
