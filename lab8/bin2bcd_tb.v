// CPEN 230L Lab 8, test bench for module bin2bcd
// Kevin Tran

module bin2bcd_tb;
  reg  [3:0] count;   // counter to DUT inputs
  wire [3:0] digit1;  // BCD digits from DUT output
  wire [3:0] digit0;

  // instantiate the DUT here
  bin2bcd_top DUT(
.SW (SW),
.HEX1(digit1),
.HEX0(digit0)
);  

  initial begin          // test procedure
    count = 4'd0;        // count 0 through 15
    $display("time count BCD1:0");    // response

    $monitor($time, " ", count, " ", digit1, " : ", digit0);
    #160 $finish;  
  end

  always                 // step through all input values
    #10 count = count + 1;

endmodule
