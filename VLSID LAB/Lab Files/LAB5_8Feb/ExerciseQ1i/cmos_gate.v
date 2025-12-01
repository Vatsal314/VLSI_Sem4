module cmos_gate(
    input A, B, C, D, E,
    output F
);
    wire internal_or;
    supply1 vdd;
    supply0 gnd;
    pmos p1(internal_or, vdd, A);
    pmos p2(internal_or, vdd, B);
    pmos p3(internal_or, vdd, C);
    pmos p4(internal_or, vdd, D);
    pmos p5(internal_or, vdd, E);
    nmos n1(internal_or, n1_mid1, A);
    nmos n2(n1_mid1, n1_mid2, B);
    nmos n3(n1_mid2, gnd, C);
    nmos n4(internal_or, n2_mid1, D);
    nmos n5(n2_mid1, gnd, E);
    nmos n_inv1(F, gnd, internal_or);
    pmos p_inv1(F, vdd, internal_or);
endmodule

