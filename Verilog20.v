`timescale 1ns / 1ns
module comparison_test;
	reg[7:0] iA;
	reg[7:0] iB;
	wire oL;
	wire oG;
	wire oM;

comparison uut(
	.iA(iA),
	.iB(iB),
	.oL(oL),
	.oG(oG),
	.oM(oM)
);
	
initial 
	begin
		iA = 8'b1010_1010;
		iB = 8'b1011_0011;
		#50 iA = 8'b1110_0001;
			iB = 8'b0001_1110;
	end
endmodule