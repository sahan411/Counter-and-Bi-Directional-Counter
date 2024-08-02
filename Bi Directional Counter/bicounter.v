module bicount(
    input RESET,
    input CLK,
    input DIR,
    output reg [3:0] COUNT
);

	always @(negedge CLK or posedge CLK) begin 
		if(RESET == 0)
			COUNT<=0;
			
		else begin
			if(DIR==1) begin 
				if(COUNT== 4'b1010)
					COUNT<=0;
				else
					COUNT <= COUNT+1;
			end	
			
			else begin 
				if(COUNT==0)
					COUNT<=4'b1010;
				else 
					COUNT<=COUNT-1;
			end
		end
	end
endmodule