`timescale 10ns/100ps

module fourbitBCD_tb;
	reg [3:0] bin;
	wire [4:0] convert;
	
	fourbitBCD DUT(
		bin,
		convert
	);
	
	integer i;
	
	//create stimulus
	
	initial begin
	
			for(i = 0; i < 10; i = i + 1) begin
				bin = i;
				#10;
				$display("For %d we get %b", i, convert);
		end
		
		
		$stop;
	
	end
	
endmodule
	