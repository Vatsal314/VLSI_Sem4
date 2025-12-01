module subtractor_tb();
reg a,b,bin;
wire d,bout;
subtractor uut(a,b,bin,d,bout);
initial begin 
a=0; b=0; bin=0;
#5 a=0; b=0; bin=1;
#5 a=0; b=1; bin=0;
#5 a=0; b=1; bin=1;
#5 a=1; b=0; bin=0;
#5 a=1; b=0; bin=1;
#5 a=1; b=1; bin=0;
#5 a=1; b=1; bin=1;
#20 $finish ;
end
endmodule 
