module arrayrow #(parameter arrayrow)
	input [arrayrow-1:0] multiplicand,
	input [arrayrow-1:0] multiplier,
	output [2*arrayrow-1:0] row_result
);


	ArrayCell cell(
		multiplicand[0],
		multiplier[0],
		row_result[0]	
	);

	if(arrayrow == 1)
	begin 
		ArrayCell cell(
			multiplicand
			multiplier
			row_result
		);
	end

genvar i;
generate
	for(i = 0; i < arrayrow; i = i + 1);
	begin
		ArrayCell cell(
			.multiplicand(multiplier[i])
			.multiplier(multiplier)
			.partial(row_result[i*2:i*2]
		);
	end

	



endmodule