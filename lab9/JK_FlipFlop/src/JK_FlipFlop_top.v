//----------------------------------------------------------------------
//Kevin Tran
//----------------------------------------------------------------------
module JK_FlipFlop_top (
	input [3:0]  KEY,     //3 input push buttons (J, K & CLK)
	input [1:0]  SW,		 //2 input switches (Pr & Clr)
	output [1:0] LEDG    //2 outputs 
	);
	
// Instantiation of the JK_FlipFlop
	JK_FlipFlop dut ( 
		.nPr(SW[1]),
        .nClr(SW[0]),
        .Clk(KEY[3]), 
		.J(KEY[1]),
		.K(KEY[0]),
		.Q(LEDG[1]),
		.Qn(LEDG[0])
		);
	
endmodule 


		


