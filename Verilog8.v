`timescale 1 ns/ 1 ns
module count60_tb();
reg eachvec;
reg clk;
reg [7:0] data;
reg ld;
reg rst_n;                                              
wire c;
wire [7:0]  qout;
                       
count60 i(
    .c(c),
    .clk(clk),
    .data(data),
    .ld(ld),
    .qout(qout),
    .rst_n(rst_n)
);

initial
begin
    rst_n = 1;
    ld = 0;
    clk = 0;
    data = 0;
    #5 rst_n = 0;
    #5 rst_n = 1;
    repeat(2000)
        #5 clk = ~clk;
    data = {4'd4, 4'd7};
    ld = 1;
    #5 ld = 0;
    repeat(20)
        #5 clk = ~clk;
    $stop;
end                                     
endmodule