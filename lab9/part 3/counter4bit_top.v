//-------------------------------------------------------------------------------------
// CPEN 230L Fall 2015
// Kevin Tran
//--------------------------------------------------------------------------------------

module counter4bit_top(
			input nReset,
			input enable,			
            input clock,
			output [3:0] Q,
			output [6:0] HEX0				
         );
			
			counter4bit cb(
					.Clock (clock),
					.nReset (nReset),
					.Enable (enable),
					.Count (Q)
					);
					
			hex2seg hts(
					.Cin(Q),
					.Display_o (HEX0)
					);
			
endmodule 