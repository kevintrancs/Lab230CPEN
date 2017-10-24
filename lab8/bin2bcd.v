// CPEN 230L Lab 8, 4-bit binary to 2-digit BCD converter
// Kevin Tran

module bin2bcd (
  input  [3:0] bin_i,    // 0 to 15
  output [3:0] bcd1_o,   // 0 or 1 (bin_i MS decimal digit)
  output [3:0] bcd0_o);  // 0 to 9 (bin_i LS decimal digit)

 wire[3:0]vP;
	assign vP = bin_i - 4'b1010;
	always @(*)
		begin
		if (bin_i > 4'b1001)
			begin
			bcd0_o = 1;
			bcd1_o = vP;
			end
		else
			begin
			bcd0_o = 0;
			bcd1_o = bin_i;
			end	
		end

endmodule
