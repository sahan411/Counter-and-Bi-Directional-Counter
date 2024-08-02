module bicount_tb();
	reg reset, clk, dir;
	wire [3:0] count;
	
	bicount uut (
        .RESET(reset),
        .CLK(clk),
        .DIR(dir),
        .COUNT(count)
    );
	
	always #5 clk= !clk;
	
	initial begin 
		$dumpfile("bicount.vcd");
		$dumpvars;
		
		clk=0; reset=0; dir=1;
		
		#10 reset=1;
		#100 dir=0;
		#150 dir=1;
		#40 $finish;
		
	end
	
endmodule