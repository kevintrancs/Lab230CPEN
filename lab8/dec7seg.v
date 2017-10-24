// CPEN 230L lab 8, BCD to 7-segment display decoder
// Kevin Tran

module dec7seg (
  input [3:0] bcd_i,     // BCD digit in
  output [6:0] disp_o);  // 7-segment display drive out

  // display segment number:           6543210
  assign disp_o = (bcd_i == 4'b0000) ? 7'b1000000 :
                  (bcd_i == 4'b0001) ? 7'b1111001 :
                  (bcd_i == 4'b0010) ? 7'b0100100 :
                  (bcd_i == 4'b0011) ? 7'b0110000 :
                  (bcd_i == 4'b0100) ? 7'b0011001 :
                  (bcd_i == 4'b0101) ? 7'b0010010 :
                  (bcd_i == 4'b0110) ? 7'b0000011 :
                  (bcd_i == 4'b0111) ? 7'b1111000 :
                  (bcd_i == 4'b1000) ? 7'b0000000 :
                  (bcd_i == 4'b1001) ? 7'b0011000 :
                  (bcd_i == 4'b1000) ? 7'b0000000 :
                  7'b1111111;                       
endmodule