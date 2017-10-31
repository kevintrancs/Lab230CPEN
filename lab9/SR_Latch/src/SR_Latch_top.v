//---------------------------------------------------------------------------
//Kevin Tran
//----------------------------------------------------------------------------

module SR_Latch_top(
			input [1:0] KEY,           // Switch inputs
         output [1:0] LEDG      // Green LED outputs
         );
			
			SR_Latch DUT(
				.Sn (KEY[1]),
				.Rn (KEY[0]),
				.Q (LEDG[1]),
				.Qn (LEDG[0])
				);
endmodule 


