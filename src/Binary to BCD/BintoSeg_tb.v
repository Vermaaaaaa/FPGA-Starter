`timescale 10ns/100ps

module BintoSeg_tb;

	reg [3:0] bin;
	wire [6:0] seg1;
	wire [6:0] seg2;
	
	BintoSeg DUT(
		bin,
		seg1,
		seg2
	);
	
	integer i;
	
	//create stimulus
	
	initial begin
	
			for(i = 0; i < 16; i = i + 1) begin
				bin = i;
				#10;
				$display("For %d Seg1: %b, Seg2: %b", i, seg1, seg2);
		end
		
		
		$stop;
	
	end
	
endmodule
	