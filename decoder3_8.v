module decoder3_8 (iI_L, iST_L, oYex_L, oYs, oY_L);
     input [7:0] iI_L;
     input iST_L;
     output [2:0] oY_L; 
     output oYex_L;
     output oYs;
     reg [2:0] oY_L;
     reg oYex_L, oYs;
     always @(iI_L or iST_L)
         if(iST_L) 
				begin 
					oY_L <= 3'b111;
					oYex_L <= 1; 
					oYs <= 1; 
				end 
        else if (iI_L[7] == 0) 
				begin 
					oY_L <= 3'b000; 
					oYex_L <= 0; 
					oYs <= 1; 
				end
        else if (iI_L[6] == 0) 
				begin 
					oY_L <= 3'b001;
					oYex_L <= 0;
					oYs <= 1;
				end
        else if (iI_L[5] == 0)
				begin 
					oY_L <= 3'b010;
					oYex_L <= 0;
					oYs <= 1;
				end
        else if (iI_L[4] == 0) 
				begin 
					oY_L <= 3'b011;
					oYex_L <= 0;
					oYs <= 1;
				end
        else if (iI_L[3] == 0) 
				begin 
					oY_L <= 3'b100; 
					oYex_L <= 0; 
					oYs <= 1; 
				end
        else if (iI_L[2] == 0)
				begin 
					oY_L <= 3'b101;
					oYex_L <= 0; 
					oYs <= 1; 
				end
        else if (iI_L[1] == 0) 
				begin 
					oY_L <= 3'b110; 
					oYex_L <= 0; 
					oYs <= 1;
				end
        else if (iI_L[0] == 0) 
				begin 
					oY_L <= 3'b111; 
					oYex_L <= 0; 
					oYs <= 1; 
				end
        else if (iI_L == 8'b11111111) 
				begin 
					oY_L <= 3'b111; 
					oYex_L <= 1; 
					oYs <= 0; 
				end
        else 
				begin 
					oY_L <= 3'b111; 
					oYex_L <= 1; 
					oYs <= 1; 
				end
endmodule