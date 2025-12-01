module encoder_tb();
reg i0, i1, i2, i3;
wire a,b,y;
encoder uut(i0,i1,i2,i3,a,b,y);
initial begin
i0=0; i1=0; i2=0; i3=0;
#5 i0=1; i1=0; i2=0; i3=0;
#5 i0=0; i1=1; i2=0; i3=0;
#5 i0=0; i1=0; i2=1; i3=0;
#5 i0=0; i1=0; i2=0; i3=1;
#20 $finish;
end
endmodule
