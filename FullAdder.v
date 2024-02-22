module FullAdder(
	input A,
	input B,
	input C_in,
	output Sum,
	output C_out
	
);

	wire w1, w2, w3;
	xor(w1, A, B);
	xor(Sum, w1, C_in);
	
	and(w2, A, B);
	and(w3, C_in, w1);
	or(C_out, w2, w3);

endmodule

