module equa(a,b,c,d,e,y);
input a,b,c,d,e;
output y;
supply1 vdd;
supply0 gnd;
pmos m1(y,vdd,e);
pmos m2(f,vdd,b);
pmos m3(f,vdd,c);
pmos m4(f,vdd,d);
pmos m5(y,f,a);
nmos m6(y,g,e);
nmos m7(g,h,b);
nmos m8(h,i,c);
nmos m9(i,gnd,d);
nmos m10(g,gnd,a);
endmodule
