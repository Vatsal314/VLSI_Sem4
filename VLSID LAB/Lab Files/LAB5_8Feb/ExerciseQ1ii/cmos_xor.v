module cmos_xor (
    input A, B,
    output F
);
    wire nA, nB, term1, term2;

    supply1 VDD;  
    supply0 GND;  

    not (nA, A);
    not (nB, B);

    // Pull-down network (NMOS transistors)
    wire w1, w2;
    nmos n1(w1, GND, B);
    nmos n2(F, w1, A);  // A & ~B in series

    nmos n3(w2, GND, nB);
    nmos n4(F, w2, nA);  // B & ~A in series

    // Pull-up network (PMOS transistors)
    wire w3;
    pmos p1(w3, VDD, A);
    pmos p2(w3, VDD, B);  

    pmos p3(F, w3, nA);
    pmos p4(F, w3, nB);  
endmodule

