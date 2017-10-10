//CPEN230L Lab6b, Majority Gate using Nand Only
// Kevin Tran, 10/10/2017

module majoritygate(f, a, b, c); //declare the variables
output f; // declare variable f as output
input a, b, c; //declare input variables a, b, and c
wire x, y, z; // wire x, y, z together
nand(x, a, b); // nand values a and b together to output x
nand(y, b, c); // nand values b and c together to output y
nand(z, a, c); // nand values a and c together to output z
nand(f, x, y, z); //nand x, y, z together to form output f
endmodule 