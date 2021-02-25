module tjg_lab12_v_tb;  
	reg [2:0] selc_tb;
	reg clock_tb;
	wire [9:0] fp_tb;
	wire cout_fp_tb;
	integer i;
	
	
	tjg_lab12_v		dut 	(selc_tb, clock_tb, cout_fp_tb, fp_tb ); //selc, start, clock, done, FP, count_fp
	
	initial begin 
		begin //test for 000000 and 0000
			for (i=0; i<6; i=i+1)
				tjg_multi_vector (3'b000, 0);
		end 
		
		begin //test for 111111 and 1111
			for (i=0; i<6; i=i+1)
				tjg_multi_vector (3'b001, 0);
		end 
		
		begin //test for 010101 and 0101
			for (i=0; i<6; i=i+1)
				tjg_multi_vector (3'b010, 0);
		end 
	
		begin //test for 101010 and 1010
			for (i=0; i<6; i=i+1)
				tjg_multi_vector (3'b011, 0);
		end	
		
		begin //test for 010101 and 1010
			for (i=0; i<6; i=i+1)
				tjg_multi_vector (3'b111, 0);
		end
		
end
task tjg_multi_vector;
// input values passed to the task
	input [2:0] selc_int;
	input  clock_int;
	begin
		selc_tb = selc_int;
		clock_tb = clock_int;
		#20000;
		clock_tb = 1;
		#20000;
	end
endtask 
endmodule 