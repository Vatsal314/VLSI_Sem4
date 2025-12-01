module q_tb();
reg a,b,c;
wire q;
q uut(a,b,c,q);
initial begin
a=1'b0; b=1'b0; c=1'b0; #20;
a=1'b0; b=1'b0; c=1'b1; #20;
a=1'b0; b=1'b1; c=1'b0; #20;
a=1'b0; b=1'b1; c=1'b1; #20;
a=1'b1; b=1'b0; c=1'b0; #20;
a=1'b1; b=1'b0; c=1'b1; #20;
a=1'b1; b=1'b1; c=1'b0; #20;
a=1'b1; b=1'b1; c=1'b1; #20;
$display("Test complete");
end
endmodule
