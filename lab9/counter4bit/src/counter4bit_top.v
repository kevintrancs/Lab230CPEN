//-------------------------------------------------------------------------------------
// CPEN 230L Fall 2015
// Kevin Tran
//--------------------------------------------------------------------------------------

module counter4bit_top(
			input KEY[2:0],
			output [3:0] Q,
			output [6:0] HEX0				
         );
			
			counter4bit cb(
					.Clock (KEY[2]),
					.nReset (KEY[1]),
					.Enable (KEY[0]),
					.Count (Q)
					);
					
			hex2seg hts(
					.Cin(Q),
					.Display_o (HEX0)
					);
			
endmodule 