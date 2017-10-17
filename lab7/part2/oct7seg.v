// CPEN230 lab 7 part 2, octal to 7-segment decoder
// Kevin Tran

module oct7seg (
  input  [2:0] c_i,      // 3-bit octal digit input
  output [6:0] disp_o);  // 7-bit output to a 7-segment display

	reg[6:0] HEX0;
	assign disp_o = HEX0;
	
	always @(*)
		begin
		if (c_i == 3'b000)
			HEX0 = 7'b1000000;
		else if(c_i[2:0] == 3'b001)
			HEX0 = 7'b1111001;
		else if(c_i[2:0] == 3'b010)
			HEX0 = 7'b0100100;
		else if(c_i[2:0] == 3'b011)
			HEX0 = 7'b0110000;
		else if(c_i[2:0] == 3'b100)
			HEX0 = 7'b0011001;
		else if(c_i[2:0] == 3'b101)
			HEX0 = 7'b0010010;
		else if(c_i[2:0] == 3'b110)
			HEX0 = 7'b0000011;
		else 
			HEX0 = 7'b1111000;
		end
endmodule
