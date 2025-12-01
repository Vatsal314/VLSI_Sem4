module cmos_xor (
  input A,
  input B,
  output F
);

  wire A_bar;  // A inverted
  wire B_bar;  // B inverted

  // Inverters for A and B
  not (A_bar, A);
  not (B_bar, B);

  // Pull-Up Network (using NAND gates - an alternative approach)
  wire term1;
  nand (term1, A, B);  // (A & B)' = A' + B'  (De Morgan's Law)

  wire term2;
  nand (term2, A_bar, B_bar); // (A' & B')' = A + B

  nand (F, term1, term2); // ((A & B)' & (A' & B')')' = (A & B) + (A' & B') = A ⊕ B

/*  // Alternative Pull-Up Network (more direct)
  pmos p1 (F, VDD, A);
  pmos p2 (F, VDD, B); 
*/


  // Pull-Down Network (using pass transistors)
  nmos n1 (F, A, B_bar);  // A & B'
  nmos n2 (F, B, A_bar);  // B & A'

  // Supply voltages (optional, but good practice)
  supply1 VDD;  // Power supply
  supply0 GND;  // Ground

endmodule
