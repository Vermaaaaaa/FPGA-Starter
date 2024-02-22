`timescale 1ns/100ps

module FullAdder_tb;
	reg a;
	reg b;
	reg c_in;
	
	wire sum;
	wire c_out;
	
	FullAdder dut(
		a,
		b,
		c_in,
		sum,
		c_out
	);
	
	integer i;
	
	//create stimulus
	
	initial begin
	
		c_in = 1'b0;
		
		for(i = 0; i < 4; i = i + 1) begin
		
		{b,a} = i;
		
		#10;
		
		end
		
		$stop;
	
	end
	
endmodule
	