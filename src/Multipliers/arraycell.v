module ArrayCell(
	input a,
	input b,
	input c,
	input c_in,
	
	output c_out,
	output sum
);
	wire w1;

	and(w1, a, b);
	
	FullAdder FA(
		.A(w1),
		.B(c),
		.C_in(c_in),
		.Sum(sum),
		.C_out(c_out)
	);

endmodule
