module eightbitMUX(
	input [7:0] a,
	input [2:0] sel,
	output x
);

	assign x = a[sel];

endmodule
