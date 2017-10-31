// CPEN 230L lab 9 part 3, 4-bit synchronous counter

module counter4bit (
  input Clock,
  input nReset,           // asynchronous active low reset
  input Enable,
  output [3:0] Count);

  wire en1, en2, en3;     // enables for stages 1, 2, 3

  JK_FlipFlop FF0 (
    .nPr  (1'b1),         // same for all 4 instances
    .nClr (nReset),       // same for all 4 instances
    .Clk  (Clock),        // same for all 4 instances
    .J    (Enable),
    .K    (Enable),
    .Q    (Count[0]),
    .Qn   () );           // no contact

  assign en1 = Enable & Count[0];

  JK_FlipFlop FF1 ( // Fill out the module insantiation
     .nPr  (1'b1),         // same for all 4 instances
    .nClr (nReset),       // same for all 4 instances
    .Clk  (Clock),        // same for all 4 instances
    // .J    (en1),
    // .K    (en1),
    // .Q    (Count[1]),
    // .Qn   ()
 );

  assign en2 = en1 & Count[1];

  JK_FlipFlop FF2 ( // Complete the module header
    .nPr  (1'b1),         // same for all 4 instances
    .nClr (nReset),       // same for all 4 instances
    .Clk  (Clock),        // same for all 4 instances
   // .J    (en2),
   // .K    (en2),
   // .Q    (Count[2]),
   // .Qn   ()
 );

  assign en3 = en2 & Count[2];

  JK_FlipFlop FF3 ( // Complete the module header
    .nPr  (1'b1),         // same for all 4 instances
    .nClr (nReset),       // same for all 4 instances
    .Clk  (Clock),        // same for all 4 instances
   // .J    (en3),
   // .K    (en3),
   // .Q    (Count[3]),
   // .Qn   ()
 );

endmodule
