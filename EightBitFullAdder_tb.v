`timescale 10ns/100ps

module EightBitFullAdder_tb;
	reg [7:0]a;
	reg [7:0]b;
	wire [7:0]sum;
	wire c_out;
	
	EightBitFullAdder DUT(
		a,
		b,
		sum,
		c_out
	);
	
	integer i;
	integer j;
	
	//create stimulus
	
	initial begin
	
		a = 0;
		b = 0;
		
		
		
		 for (i = 0; i < 256; i = i + 1) begin
            b = i;
            for (j = 0; j < 256; j = j + 1) begin
                a = j;
                #10;
                $display("Input: a=%b, b=%b; Sum=%b, C_out=%b", a, b, sum, c_out);
            end
        end
		
		$stop;
	
	end
	
endmodule
	