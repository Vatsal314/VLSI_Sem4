module not_tb();
reg a;
wire b;
not1 uut(a,b);
initial begin 
a=0;
#5 a=1;
#5 a=0;
#10 $finish;
end
endmodule

