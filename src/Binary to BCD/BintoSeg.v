module BintoSeg(
	input [3:0] bin,
	output [6:0] seg1,
	output [6:0] seg2
);

	wire [7:0]convert;
	assign convert[7:5] = 1'b0;
	
	fourbitBCD fbBCD(
		bin,
		convert[4:0]
	);
	
	BCDtoSeg BCDtoSeg1(
		convert[3:0],
		seg1
	);
	
	BCDtoSeg BCDtoSeg2(
		convert[7:4],
		seg2
	);

endmodule
