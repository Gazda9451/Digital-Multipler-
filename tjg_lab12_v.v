module tjg_lab12_v (selc, clock,  count_fp, FP);
	input [2:0] selc;
	input clock;
	output count_fp;
	output [9:0] FP;
	reg [5:0] mult_val;
	reg [3:0] md_val;
	

	tjg_multi_12_v  my_board (mult_val, md_val, clock, count_fp, FP);	//(M_val, md_val, clock, cout_fp, FP)

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