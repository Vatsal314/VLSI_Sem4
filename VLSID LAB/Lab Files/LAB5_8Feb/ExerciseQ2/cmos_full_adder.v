module cmos_full_adder (
    input A, B, Cin,
    output Sum, Cout
);
    wire nA, nB, nCin;
    wire AxorB;

    supply1 VDD;
    supply0 GND;

    not (nA, A);
    not (nB, B);
    not (nCin, Cin);
    wire w1, w2;
    nmos n1(w1, GND, A);

    nmos n3(w2, GND, B);
    nmos n4(AxorB, w2, nA); 
    pmos p1(AxorB, VDD, A);
    pmos p2(AxorB, VDD, B);

    pmos p3(AxorB, VDD, nA);
    pmos p4(AxorB, VDD, nB);
    wire w3, w4;
    nmos n5(w3, GND, AxorB);
    nmos n6(Sum, w3, nCin);  
    nmos n7(w4, GND, Cin);
    nmos n8(Sum, w4, AxorB);
    pmos p5(Sum, VDD, AxorB);
    pmos p6(Sum, VDD, Cin);

    pmos p7(Sum, VDD, nCin);
    pmos p8(Sum, VDD, nA);
    wire ab_and, acin_and;
    nmos n9(ab_and, GND, A);
    nmos n10(ab_and, ab_and, B);
    nmos n11(acin_and, GND, AxorB);
    nmos n12(acin_and, acin_and, Cin);
    or (Cout, ab_and, acin_and);

endmodule


