module q (a,b,c,q);
input a,b,c;
output q;
assign q=~(a*b)*~(a+b)*c;
endmodule
