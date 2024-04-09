module FourBitCounter(
	input clk,
	input rst,
	output reg [3:0] count
);

	wire [3:0] signal;
	wire [3:0] clkbus;

	DtypeFF FF1(
		clk,
		count[0],
		rst,
		signal[0],
		clkbus[0]
	);
	
	DtypeFF FF2(
		clkbus[0],
		count[1],
		rst,
		q_next[1]
	);
	
	DtypeFF FF3(
		clk,
		q_next[1],
		rst,
		q_next[2]
		
	);
	
	DtypeFF FF4(
		clk,
		q_next[2],
		rst,
		q_next[3]
	);
	
	always @ (posedge clk) begin
		count <= signal;
	end

endmodule
