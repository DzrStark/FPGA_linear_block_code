module counter(clk,c_out);
input clk;
output [6:0]c_out;
reg [6:0]c_out=7'b0;//存放计数器的当前值
reg [6:0]count=7'b0;//存放计数过程中的内部计数值
always@(posedge clk)//在时钟的上升沿触发always块
//如果 count 小于 32，计数器递增
//当 count 达到 32 时，将 c_out 设置为当前计数值，并将 count 重置为 0
begin
		if(count<128)
			begin
				c_out<=count;
				count<=count+1;
			end
		else if(count==128)
			begin
				c_out<=count;
				count<=0;
			end
end
endmodule