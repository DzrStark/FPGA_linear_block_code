module chuan_to_bing7(hm_noise, clk16, cb_out);
    input clk16;
    input hm_noise;
    output [6:0] cb_out;
    reg [6:0] cb_out;
    reg [6:0] temp;
    integer counter = 0;
    always @(posedge clk16)
        begin
            if(counter ==7)
                begin
                    cb_out <= temp;
                    counter = 0;
                end
            temp[6 - counter] <= hm_noise;
            counter = counter + 1;
        end
endmodule