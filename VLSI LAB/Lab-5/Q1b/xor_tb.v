`timescale 1ns / 1ps // Time units for simulation

module cmos_xor_tb; // Testbench module name

  // Declare signals to connect to the unit under test (UUT)
  reg A;
  reg B;
  wire F;

  // Instantiate the UUT (the cmos_xor module)
  cmos_xor uut (
    .A(A),
    .B(B),
    .F(F)
  );

  // Test sequences (initial block)
  initial begin
    // Test case 1: A=0, B=0
    A = 0;
    B = 0;
    #10; // Wait for a short time (10 time units)
    $display("A=0, B=0, F=%b", F); // Display the output

    // Test case 2: A=0, B=1
    A = 0;
    B = 1;
    #10;
    $display("A=0, B=1, F=%b", F);

    // Test case 3: A=1, B=0
    A = 1;
    B = 0;
    #10;
    $display("A=1, B=0, F=%b", F);

    // Test case 4: A=1, B=1
    A = 1;
    B = 1;
    #10;
    $display("A=1, B=1, F=%b", F);

    $finish; // End the simulation
  end

endmodule
