module xnortb();
reg a,b;
wire c;
xnor1 uut(a,b,c);
initial begin 
a=0;b=0;
#5 a=0;b=1;
#5 a=1;b=0;
#5 a=1;b=1;
#20 $finish;
end
endmodule

