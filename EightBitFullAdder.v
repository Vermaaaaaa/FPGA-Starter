module EightBitFullAdder(
	input [7:0] A,
	input [7:0] B,
	output [7:0] Sum,
	output C_out
);

	wire [1:0]w1;
	
	HalfAdder HA_1(
			A[0],
			B[0],
			Sum[0],
			w1[0] 
	);
	
	ThreeBitFullAdder TFA(
		A[3:1],
		B[3:1],
		w1[0],
		Sum[3:1],
		w1[1]
	);
	
	FourBitFullAdder FFA(
		A[7:4],
		B[7:4],
		w1[1],
		Sum[7:4],
		C_out
	);


endmodule