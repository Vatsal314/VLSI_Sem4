module decoder_tb();
reg a,b;
wire y0,y1,y2,y3;
decoder uut(a,b,y0,y1,y2,y3);
initial begin 
a=0; b=0;
#5 a=0; b=1;
#5 a=1; b=0;
#5 a=1; b=1;
#20 $finish;
end
endmodule
