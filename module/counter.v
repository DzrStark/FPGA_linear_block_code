module counter(clk,c_out);
input clk;
output [6:0]c_out;
reg [6:0]c_out=7'b0;//��ż������ĵ�ǰֵ
reg [6:0]count=7'b0;//��ż��������е��ڲ�����ֵ
always@(posedge clk)//��ʱ�ӵ������ش���always��
//��� count С�� 32������������
//�� count �ﵽ 32 ʱ���� c_out ����Ϊ��ǰ����ֵ������ count ����Ϊ 0
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