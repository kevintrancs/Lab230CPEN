//---------------------------------------------------
// CPEN 230L
// Display Top Logic file
// 3 wide, 5-1 Mux driving 7 segment display
// display_top.v
//kevin Tran
//----------------------------------------------------

module display_top(

	input [17:0] SW, //3 input toggle switches
	output [6:0] HEX0 //6 bit 7-seg display element
	);
	
	//assigning output of 5 to 1 Mux to wire
	wire [2:0] dispDrv;
	
	mux3w_5to1 mux (
		.SW (SW),
		.LEDG (dispDrv)
	);
	
	//Input output of mix into the display_decoder
	oct7seg char0 (
		.Cin (dispDrv), //Cin is 3 bit input
		.Display_o (HEX0) //7bit display output
		);
	endmodule
	