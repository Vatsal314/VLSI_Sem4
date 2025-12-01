module encoder(i0,i1,i2,i3,a,b,y);
input i0,i1,i2,i3;
output a,b,y;
assign a=i3|i2;
assign b=i3|(~i2&i1);
assign y=i3|i2|i1|i0;
endmodule
