// CPEN230L Majority Gate Test bench
// Kevin Tran, 10/10/2017

module Test_bench;
// Define signals used in the testbench
reg a,b,c; //Inputs to the DUT. Need storage, so is type reg
reg [2:0] count; //multi-bit register used as a count or state value
wire f; // The DUT output.

// This is a driven element, so is type wire
// Instantiate the DUT.
// Logic1 is the module name. trylogic is the instance name
majoritygate trylogic(f,a,b,c);

// Drive the model inputs (Stimulation)
// use count to assign values to a, b and c
initial
   count = 3'b0; // set count = 0

always
   begin
      {a,b,c} = count; // assign values to a,b and c
      #5 count = count+1; // compute next set of values. # is a time delay
   end

initial //Time goes from 0 to 40 in steps of 5 time units, then ends
#40 $finish;

// Observe by a display of the inputs and output in truth table form
initial
   begin
      $display("                ","time ","a ","b ","c ","f"); // Table headings
      $monitor($time," ",a," ", b," ", c," ", f); // input/output values
      end
endmodule // Test_Bench
