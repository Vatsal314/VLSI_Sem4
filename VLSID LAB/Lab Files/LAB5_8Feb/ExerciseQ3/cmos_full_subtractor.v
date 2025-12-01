module cmos_full_subtractor (
    input A, B, Bin,
    output Diff, Bout
);
    wire nA, nB, nBin;
    wire AxorB, AxorB_Bin;
    wire term1, term2, term3; 

    supply1 VDD;
    supply0 GND;

    not (nA, A);
    not (nB, B);
    not (nBin, Bin);

    // -------- CMOS XOR for (A ^ B) -------- //
    wire AxorB_nA, AxorB_nB, AxorB_term1, AxorB_term2;
    
    // Pull-down network (NMOS) for A ^ B
    nmos n1(AxorB_term1, GND, A);
    nmos n2(AxorB, AxorB_term1, nB);  // A & ~B in series

    nmos n3(AxorB_term2, GND, B);
    nmos n4(AxorB, AxorB_term2, nA);  // B & ~A in series

    // Pull-up network (PMOS) for A ^ B
    pmos p1(AxorB, VDD, A);
    pmos p2(AxorB, AxorB, B);  // Parallel for (A & B)

    pmos p3(AxorB, VDD, nA);
    pmos p4(AxorB, AxorB, nB);  // Parallel for (~A & ~B)

    // -------- CMOS XOR for Diff = (A ^ B) ^ Bin -------- //
    wire Diff_term1, Diff_term2;
    
    // Pull-down network (NMOS) for Diff
    nmos n5(Diff_term1, GND, AxorB);
    nmos n6(Diff, Diff_term1, nBin);  // (A ^ B) & ~Bin in series

    nmos n7(Diff_term2, GND, Bin);
    nmos n8(Diff, Diff_term2, AxorB);  // Bin & ~(A ^ B) in series

    // Pull-up network (PMOS) for Diff
    pmos p5(Diff, VDD, AxorB);
    pmos p6(Diff, Diff, Bin);  // Parallel for (A ^ B & Bin)

    pmos p7(Diff, VDD, nBin);
    pmos p8(Diff, Diff, nA);  // Parallel for (~Bin & ~(A ^ B))

    // -------- CMOS Borrow (Bout) Implementation -------- //
    // Borrow equation: Bout = (~A · B) + (~A · Bin) + (B · Bin)

    // CMOS AND for (~A · B)
    nmos n9(term1, GND, nA);
    nmos n10(term1, term1, B);  // (~A & B) in series

    // CMOS AND for (~A · Bin)
    nmos n11(term2, GND, nA);
    nmos n12(term2, term2, Bin);  // (~A & Bin) in series

    // CMOS AND for (B · Bin)
    nmos n13(term3, GND, B);
    nmos n14(term3, term3, Bin);  // (B & Bin) in series

    // CMOS OR for Borrow-out (Bout = term1 + term2 + term3)
    wire Bout_term;
    or (Bout_term, term1, term2, term3);
    nmos n15(Bout, GND, Bout_term);
    pmos p9(Bout, VDD, term1);
    pmos p10(Bout, VDD, term2);
    pmos p11(Bout, VDD, term3);

endmodule
