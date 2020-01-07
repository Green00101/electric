
`timescale 1ns/1ns
module JK_FF2_tb;
 
reg j,k,clk;
wire q;
 
always
begin
	#10 clk = ~clk;
end
 
initial
begin
	clk = 0;
	j =	1'b0;
	k = 1'b0;
	#30 j = 1'b0; k = 1'b1;    
	#20 j = 1'b1; k = 1'b0;
	#20 j = 1'b1; k = 1'b1;
	#20 j = 1'b1; k = 1'b0;
end
 
JK_FF2 i(
.j(j), 
.k(k), 
.clk(clk), 
.q(q)
);
endmodule
