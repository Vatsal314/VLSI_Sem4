 module cmos_half_adder (
    input A, B,
    output Sum, Carry
);
    wire nA, nB;

    supply1 VDD;
    supply0 GND;

    not (nA, A);
    not (nB, B);
  
    wire w1, w2,w4;
    
    
    nmos n1(w1, GND, nB);
    nmos n2(Sum, w1, nA); 

    nmos n3(w2, GND, B);
    nmos n4(Sum, w2, A);  

    
    pmos p1(Sum, w4, A);
    pmos p2(Sum, w4, B); 

    pmos p3(w4, VDD, nA);
    pmos p4(w4, VDD, nB);

  
    wire w3;
    
    
    nmos n5(w3, GND, A);
    nmos n6(Carry, w3, B); 

    
    pmos p5(Carry, VDD, A);
    pmos p6(Carry, VDD, B); 

endmodule

