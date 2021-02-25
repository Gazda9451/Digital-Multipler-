module tjg_lab11_v_tb;  
	reg [2:0] selc_tb;
	reg start_tb, clock_tb;
	wire [9:0] fp_tb;
	wire cout_fp_tb, done_tb;
	integer i;
	
	
	tjg_lab11_v		dut 	(selc_tb, start_tb, clock_tb, done_tb, fp_tb, cout_fp_tb); //selc, start, clock, done, FP, count_fp
	
	initial begin 
		begin //test for 000000 and 0000
			for (i=0; i<10; i=i+1)
				tjg_multi_vector (3'b000, 0, 0);
		end 
		begin 
			for (i=0; i<10; i=i+1)
				tjg_multi_vector (3'b000, 1, 0);
		end 
		begin 
			for (i=0; i<10; i=i+1)
				tjg_multi_vector (3'b000, 0, 0);
		end // test ends 
		
		begin //test for 111111 and 1111
			for (i=0; i<10; i=i+1)
				tjg_multi_vector (3'b001, 0, 0);
		end 
		begin 
			for (i=0; i<10; i=i+1)
				tjg_multi_vector (3'b001, 1, 0);
		end 
		begin 
			for (i=0; i<10; i=i+1)
				tjg_multi_vector (6'b001, 0, 0);
		end // test ends 
		
		begin //test for 010101 and 0101
			for (i=0; i<10; i=i+1)
				tjg_multi_vector (3'b010, 0, 0);
		end 
		begin 
			for (i=0; i<10; i=i+1)
				tjg_multi_vector (3'b010, 1, 0);
		end 
			begin 
			for (i=0; i<10; i=i+1)
				tjg_multi_vector (3'b010, 0, 0);
		end // test ends
		
		begin //test for 101010 and 1010
			for (i=0; i<10; i=i+1)
				tjg_multi_vector (3'b011, 0, 0);
		end 
		begin 
			for (i=0; i<10; i=i+1)
				tjg_multi_vector (3'b011, 1, 0);
		end 
		begin 
			for (i=0; i<10; i=i+1)
				tjg_multi_vector (3'b011, 0, 0);
		end // test ends
		
		begin //test for 010101 and 1010
			for (i=0; i<10; i=i+1)
				tjg_multi_vector (3'b111, 0, 0);
		end 
		begin 
			for (i=0; i<10; i=i+1)
				tjg_multi_vector (3'b111, 1, 0);
		end 
		begin 
			for (i=0; i<10; i=i+1)
				tjg_multi_vector (3'b111, 0, 0);
		end // test ends
	end 
	
task tjg_multi_vector;
// input values passed to the task
	input [2:0] selc_int;
	input start_int, clock_int;
	begin
		selc_tb = selc_int;
		start_tb = start_int;
		clock_tb = clock_int;
		#20000;
		clock_tb = 1;
		#20000;
	end
endtask 
endmodule 