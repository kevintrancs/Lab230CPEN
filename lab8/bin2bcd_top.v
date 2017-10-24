// CPEN230L Lab 8 Part 1, 4-bit binary in to 2 digit BCD out
//Kevin Tran

module bin2bcd_top (
  input  [3:0] SW,    // DE2-115 board toggle switches
  output [6:0] HEX1,  // DE2-115 board 7-segment displays
  output [6:0] HEX0);

  wire [3:0] bcd1;
  wire [3:0] bcd0;

 bin2bcd(
      .bin_i(SW),
			.bcd1_o(bcd1),
			.bcd0_o(bcd0)
 );// specify the input and outputs to convert 4 switches to 2 BCD digits
    
 
 dec7seg(
      .bcd_i(bcd1),
			.disp_o(HEX1)

 );// specify the inputs and outputs to output the MS BCD digit
   
     
 dec7seg(
      .bcd_i(bcd0),
			.disp_o(HEX0)
 );// specify the inputs and outputs to output the LS BCD digit
    
endmodule
