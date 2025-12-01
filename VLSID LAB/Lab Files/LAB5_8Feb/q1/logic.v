module logic (a,b,c,d,e,f);
input a,b,c,d,e;
output f;
wire g,h,i,j;
supply1 vdd;
supply0 gnd;
pmos p1 (g,vdd,a);
pmos p2 (g,vdd,b);
pmos p3 (g,vdd,c);
pmos p4 (f,g,d);
pmos p5(f,g,e);

nmos n1(f,h,a);
nmos n2(h,i,b);
nmos n3(i,gnd,c);
nmos n4(f,j,d);
nmos n5(j,gnd,e);
endmodule
