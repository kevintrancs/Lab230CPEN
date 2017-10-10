// CPEN230L lab6 Full Adder
// Kevin Tran, 10/10/2017

module fulladder(s, cout, x, y, cin); //declare values
input x, y, cin;  //declare input values
output s, cout;   //declare output values
assign s = (x^y) ^ cin; //(X xor Y) xor Cin 
assign cout = ((x^y) && cin) || (x&&y); //((x or y) and cin) or (x and y)
endmodule 
