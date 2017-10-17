//-------------------------------------------------------------------------------------
//CPEN 230L Fall 2015
// 3 bit wide, 5 to 1 multiplexer
//Kevin Tran
//--------------------------------------------------------------------------------------
module Mux3W_5to1 (
       input     [17:0] SW,        // Switch inputs
       output    [2:0] LEDG       // Green LED outputs
       );

//Code for the 3 bit 5-1 multiplexe

       // Assign outputs 
       assign LEDG =   SW[17:15] == 3'b000 ? SW[14:12] :
                       SW[17:15] == 3'b001 ? SW[11: 9] :
                       SW[17:15] == 3'b010 ? SW[8:6]   :
                       SW[17:15] == 3'b011 ? SW[5:3]   :   
                       SW[2:0];
							  
endmodule 