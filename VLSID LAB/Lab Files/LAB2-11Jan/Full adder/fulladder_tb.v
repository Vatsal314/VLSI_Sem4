module fulladder_tb();
reg a,b,c;
wire y,cout;
fulladder uut(a,b,c,y,cout);
initial begin
a=0; b=0; c=0;
#5 a=0; b=0; c=1;
#5 a=0; b=1; c=0;
#5 a=0; b=1; c=1;
#5 a=1; b=0; c=0;
#5 a=1; b=1; c=0;
#5 a=1; b=1; c=1;
#20 $finish;
end
endmodule

