module DtypeFF(
	input clk,
	input D,
	input rst,
	output reg Q,
	output reg notQ
);

	always @ (posedge clk or negedge rst) begin
		if(!rst)begin
			Q = 1'b0;
		end
		else begin
			Q <= D;
			assign notQ = ~Q;
		end
	end

endmodule
