`timescale 10ns/100ps

module HalfAdder_tb;
	reg a;
	reg b;
	
	wire sum;
	wire c_out;
	
	HalfAdder DUT(
		a,
		b,
		sum,
		c_out
	);
	
	integer i;
	
	//create stimulus
	
	initial begin
	
		a = 0;
		b = 0;

		
		for(i = 0; i < 4; i = i + 1) begin
		
		{b,a} = i;
		
		#100;
		
		$display("Input: a=%b, b=%b; Sum=%b, C_out=%b", a, b, sum, c_out);
		
		end
		
		$stop;
	
	end
	
endmodule
	