module nand3(out,a,b,c);
output out;
input a,b,c;
supply1 vdd;
supply0 gnd;
pmos m1(out,vdd,a);
pmos m2(out,vdd,b);
pmos m3(out,vdd,c);
nmos m4(out,e,a);
nmos m5(e,f,b);
nmos m6(f,gnd,c);
endmodule
