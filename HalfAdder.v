module HalfAdder(
	input A,
	input B,
	output Sum,
	output C_out
);


	xor(Sum, A, B);
	and(C_out, A, B);

endmodule

