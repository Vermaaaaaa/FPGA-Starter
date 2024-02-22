module ArrayCell(
	input multiplicand,
	input multiplier,
	output reg partial
);

	and(partial, multiplicand, multiplier);

endmodule
