module cmos_4to1_mux (
    input I0, I1, I2, I3, 
    input S1, S0,         
    output Y              
);
    wire nS1, nS0;
    wire term0, term1, term2, term3; 

    supply1 VDD;
    supply0 GND;

    not (nS1, S1);
    not (nS0, S0);

    // CMOS AND gates for selection logic
    nmos n1(term0, GND, nS1);
    nmos n2(term0, term0, nS0);
    nmos n3(term0, term0, I0);  // (~S1 & ~S0 & I0)

    nmos n4(term1, GND, nS1);
    nmos n5(term1, term1, S0);
    nmos n6(term1, term1, I1);  // (~S1 & S0 & I1)

    nmos n7(term2, GND, S1);
    nmos n8(term2, term2, nS0);
    nmos n9(term2, term2, I2);  // (S1 & ~S0 & I2)

    nmos n10(term3, GND, S1);
    nmos n11(term3, term3, S0);
    nmos n12(term3, term3, I3); // (S1 & S0 & I3)

    // CMOS OR gate to combine terms
    wire Y_term;
    or (Y_term, term0, term1, term2, term3);
    nmos n13(Y, GND, Y_term);
    pmos p1(Y, VDD, term0);
    pmos p2(Y, VDD, term1);
    pmos p3(Y, VDD, term2);
    pmos p4(Y, VDD, term3);

endmodule
