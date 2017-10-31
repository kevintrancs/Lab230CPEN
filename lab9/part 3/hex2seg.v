//-------------------------------------------------------------------------------------

//Kevin Tran
//--------------------------------------------------------------------------------------
module dec7seg(
    input  [3:0] Cin, //four bit input vector
    output [6:0] Display_o // seven bit output vector
    );
    
    reg[6:0] HEX0;
    assign Display_o = HEX0;
    
    always@(*)
		begin
			//Shows #0
            if(Cin[3:0] == 4'b0000)
                    HEX0 = 7'b1000000;
            //Shows #1
            else if(Cin[3:0] == 4'b0001)
                    HEX0 = 7'b1111001;
            //Shows #2
            else if(Cin[3:0] == 4'b0010)
                    HEX0 = 7'b0100100;
            //Shows #3
            else if(Cin[3:0] == 4'b0011)
                    HEX0 = 7'b0110000;
            //Shows #4
            else if(Cin[3:0] == 4'b0100)
                    HEX0 = 7'b0011001;
            //Shows #5
            else if(Cin[3:0] == 4'b0101)
                    HEX0 = 7'b0010010;
            //Shows #6
            else if(Cin[3:0] == 4'b0110)
                    HEX0 = 7'b0000011;
            //Shows #7
            else if(Cin[3:0] == 4'b0111)
                    HEX0 = 7'b1111000;
            //Shows #8
            else if(Cin[3:0] == 4'b1000)
                    HEX0 = 7'b0000000;
            //Shows #9
	        else if(Cin[3:0] == 4'b1001)
                    HEX0 = 7'b0011000;
            // a
            else if(Cin[3:0] == 4'b1010)
                    HEX0 = 7'0001000;

            //b
            else if(Cin[3:0] == 4'b1011)
                    HEX0 = 7'0000011;

            //c
            else if(Cin[3:0] == 4'b1100)
                    HEX0 = 7'1000110;
            //d
            else if(Cin[3:0] == 4'b1101)
                    HEX0 = 7'b0100001;

            //e
            else if(Cin[3:0] == 4'b1110)
                    HEX0 = 7'b0000110;
            //f
            else 
                    HEX0 = 7'b0001110;
             end
endmodule
