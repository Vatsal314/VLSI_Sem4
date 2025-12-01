module gtb_tb();
reg g2,g1,g0;
wire b2,b1,b0;
gtb uut(g2,g1,g0,b2,b1,b0);
initial begin
g2=0; g1=0; g0=0;
#5 g2=0; g1=0; g0=1;
#5 g2=0; g1=1; g0=1;
#5 g2=1; g1=0; g0=0;
#5 g2=1; g1=0; g0=1; 
#5 g2=1; g1=1; g0=0;
#5 g2=1; g1=1; g0=1;
#20 $finish;
end
endmodule
