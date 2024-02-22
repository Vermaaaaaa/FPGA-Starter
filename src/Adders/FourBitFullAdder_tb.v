`timescale 10ns/100ps

module FourBitFullAdder_tb;
	reg [3:0]a;
	reg [3:0]b;
	reg c_in;
	
	wire [3:0]sum;
	wire c_out;
	
	FourBitFullAdder DUT(
		a,
		b,
		c_in,
		sum,
		c_out
	);
	
	integer i;
	integer j;
	
	//create stimulus
	
	initial begin
	
		a = 0;
		b = 0;
		
		c_in = 1'b0;
		
		 for (i = 0; i < 16; i = i + 1) begin
            b = i;
            for (j = 0; j < 16; j = j + 1) begin
                a = j;
                #10;
                $display("Input: a=%b, b=%b; Sum=%b, C_out=%b", a, b, sum, c_out);
            end
        end
		
		$stop;
	
	end
	
endmodule
	