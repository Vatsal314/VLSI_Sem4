module mux_tb();
reg a,b,c,d,s1,s0;
wire f;
mux uut(a,b,c,d,s1,s0,y);
initial begin 
a=0; b=1; c=0; d=1; s1=0; s0=0;
#5 s1=0; s0=1;
#5 s1=1; s0=0;
#5 s1=1; s0=1;
#20 $finish;
end 
endmodule
