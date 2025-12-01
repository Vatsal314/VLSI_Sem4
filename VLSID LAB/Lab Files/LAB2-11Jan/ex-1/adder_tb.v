module adder_tb();
reg x1,x2,x3;
wire f;
adder uut(x1,x2,x3,f);
initial begin 
x1=1'b0; x2= 1'b0; x3=1'b0;
#20; x1=1'b0; x2=1'b0; x3=1'b1;
#20; x1=1'b0; x2=1'b1; x3= 1'b0;
#20; x1=1'b0; x2=1'b1; x3=1'b1;
#20; x1=1'b1; x2=1'b0; x3=1'b0;
#20; x1=1'b1; x2=1'b0; x3=1'b1;
#20; x1=1'b1; x2=1'b1; x3= 1'b0;
#20; x1=1'b1; x2=1'b1; x3=1'b1;
#20; 
$display("Test complete");
end
endmodule
