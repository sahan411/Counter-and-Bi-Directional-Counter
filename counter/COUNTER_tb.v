
module COUNTER_tb;
	reg reset, clk;
	wire count;
	
	COUNTER uut(.RESET(reset), .CLK(clk));

	always #5 clk = !clk;
	
	initial begin 
		$dumpfile("COUNTER.vcd");
		$dumpvars;
		clk=0;
		reset=0;
		#10 reset = 1;
		#100 reset = 0;
		#10 $finish;
		
	end
	
endmodule
