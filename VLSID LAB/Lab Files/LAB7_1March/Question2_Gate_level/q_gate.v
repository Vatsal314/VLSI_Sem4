module q_gate (a,b,c,q);
input a,b,c;
output q;
wire d,e,f;
nand n1(d,a,b);
nor n2(e,a,b);
and (q,d,e,c);
endmodule
