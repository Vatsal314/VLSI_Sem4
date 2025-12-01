module gtb(g2,g1,g0,b2,b1,b0);
input g2,g1,g0;
output b2,b1,b0;
assign b0=g0^g1^g2;
assign b1=g1^g2;
assign b2=g2;
endmodule
