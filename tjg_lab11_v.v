module tjg_lab11_v (selc, start, clock, done, FP, count_fp);
	input [2:0] selc;
	input clock, start;
	output done, count_fp;
	output [9:0] FP;
	reg [5:0] mult_val;
	reg [3:0] md_val;
	

	tjg_multi_v  my_board (mult_val, md_val, start,  clock, FP, done, count_fp);	//M_val, m_val, start, clock, fp, done, cout_fp

	always @ (selc)
		begin 

	if (selc == 3'b000)
	begin 
		mult_val = 6'b000000;
		md_val = 4'b0000;
	end 
	else if (selc == 3'b001)
	begin 
		mult_val = 6'b111111;
		md_val = 4'b1111;
	end 
	else if  (selc == 3'b010)
	begin 
		mult_val = 6'b010101;
		md_val = 4'b0101;
	end 
	else if (selc == 3'b011)
	begin 
		mult_val = 6'b101010;
		md_val = 4'b1010;
	end 
	else if (selc == 3'b111)
	begin 
		mult_val = 6'b010101;
		md_val = 4'b1010;
	end
	else 
	begin 
		mult_val = 6'b000000;
		md_val = 4'b0000;
	end 
end
	
endmodule 