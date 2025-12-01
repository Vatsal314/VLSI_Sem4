module cmos_2to4_decoder (
    input S1, S0,
    output Y0, Y1, Y2, Y3
);
    wire nS1, nS0;

    supply1 VDD;
    supply0 GND;

    not (nS1, S1);
    not (nS0, S0);

    // CMOS Logic for Y0 = ~S1 & ~S0
    wire term0;
    nmos n1(term0, GND, nS1);
    nmos n2(term0, term0, nS0);
    pmos p1(Y0, VDD, term0);

    // CMOS Logic for Y1 = ~S1 & S0
    wire term1;
    nmos n3(term1, GND, nS1);
    nmos n4(term1, term1, S0);
    pmos p2(Y1, VDD, term1);

    // CMOS Logic for Y2 = S1 & ~S0
    wire term2;
    nmos n5(term2, GND, S1);
    nmos n6(term2, term2, nS0);
    pmos p3(Y2, VDD, term2);

    // CMOS Logic for Y3 = S1 & S0
    wire term3;
    nmos n7(term3, GND, S1);
    nmos n8(term3, term3, S0);
    pmos p4(Y3, VDD, term3);

endmodule
