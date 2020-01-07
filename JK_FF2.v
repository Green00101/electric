module JK_FF2(clk, j, k, q);
 
input clk, j, k;
output q;
reg q;
wire qb;
always@(posedge clk) 
begin
	case({j,k})
	2'b00: q <= q;
	2'b01: q <= 1'b0; 
	2'b10: q <= 1'b1; 
	2'b11: q <= ~q;
	default: q <= q;
	endcase
end
 
assign qb = ~q;
 
endmodule
