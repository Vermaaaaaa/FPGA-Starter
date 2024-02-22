module FourBitFullAdder(
	input [3:0] A,
	input [3:0] B,
	input C_in,
	output [3:0] Sum,
	output C_out
	
);

	wire [2:0]w1;

	FullAdder FA_1(
		A[0],
		B[0],
		C_in,
		Sum[0],
		w1[0]
	);
	
		FullAdder FA_2(
		A[1],
		B[1],
		w1[0],
		Sum[1],
		w1[1]
	);

		FullAdder FA_3(
		A[2],
		B[2],
		w1[1],
		Sum[2],
		w1[2]
	);

		FullAdder FA_4(
		A[3],
		B[3],
		w1[2],
		Sum[3],
		C_out
	);


endmodule