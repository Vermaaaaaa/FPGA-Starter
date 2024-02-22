module ThreeBitFullAdder(
	input [2:0] A,
	input [2:0] B,
	input C_in,
	output [2:0] Sum,
	output C_out
	
);

	wire [1:0]w1;

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
		C_out
	);


endmodule