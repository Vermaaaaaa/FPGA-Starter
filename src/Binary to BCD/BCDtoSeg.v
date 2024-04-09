module BCDtoSeg(
	input [3:0] BCDconvert,
	output reg [6:0] seg
);

	always @ (BCDconvert)
	begin
		case(BCDconvert)
			4'b0000: seg= 7'b0000001; //Output 0
			4'b0001: seg= 7'b1001111; //Output 1
			4'b0010: seg= 7'b0010010; //Output 2
			4'b0011: seg= 7'b0000110; //Output 3
			4'b0100: seg= 7'b1001100; //Output 4
			4'b0101: seg= 7'b0100100; //Output 5
			4'b0110: seg= 7'b0100000; //Output 6
			4'b0111: seg= 7'b0001111; //Output 7
			4'b1000: seg= 7'b0000000; //Output 8
			4'b1001: seg= 7'b0000100; //Output 9
			default: seg = 7'bxxxxxxx; // Default case, handle undefined values
		endcase
	end
	
endmodule
	