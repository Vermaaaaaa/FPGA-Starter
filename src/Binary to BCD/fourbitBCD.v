module fourbitBCD(
	input [3:0] bin,
	output [4:0] convert 
);

	wire [4:0]BCD;
	
	assign BCD[0] = bin[0];
	assign BCD[1] = (~bin[3] & bin[1]) | (bin[3] & bin[2] & ~bin[1]);
	assign BCD[2] = (~bin[3] & bin[2]) | (bin[2] & bin[1]);
	assign BCD[3] = bin[3] & ~bin[2] & ~bin[1];
	assign BCD[4] = (bin[3] & bin[2]) | (bin[3] & bin[1]);
	
	assign convert = BCD;

endmodule

