module count60(clk, rst_n, ld, data, qout, c);
input clk, rst_n, ld;
input [7:0] data;
output [7:0] qout;
output c;
    reg c = 0;
    reg[3:0] ten, unit;
    assign qout = {ten, unit};
    always@(posedge clk or negedge rst_n or posedge ld)
    begin   
        if(!rst_n)
            {ten, unit} <= 0;
        else if(ld)
            {ten, unit} <= data;
        else
        begin
            if(ten == 5)
            begin
                if(unit == 8)
                begin
                    c = 1;
                    unit <= unit+1;
                end
                else if(unit == 9)
                begin
                    c = 0;
                    {ten, unit} <= 0;
                end
                else
                    unit <= unit+1;
            end
            else if(unit == 9)
            begin
                ten <= ten+1;
                unit <= 0;
            end
            else
                unit <= unit+1;
        end
    end
endmodule
