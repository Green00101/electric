`timescale 1ns/1ns
 module adder_tb;	
 
 reg [ 7: 0] ia=8'b1011_0111;
 reg [ 7: 0] ib=8'b0100_1000;
 wire [ 8: 0] oadd;
 
 initial begin
 #50 ia=8'b1011_0111;
     ib=8'b1011_0111;
 #50 $stop;	
 end
 
adder adder_inst
(
 .iA(ia),
 .iB(ib),
 .oAdd(oadd)
 );

endmodule
