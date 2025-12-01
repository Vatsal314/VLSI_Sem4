`timescale 1ns/1ps
module logic_tb;
reg a,b,c,d,e;
wire f;
logic uut (a,b,c,d,e,f);
initial begin
a=0; b=0; c=0; d=0; e=1; #10;
a=0; b=0; c=0; d=1; e=0; #10;
a=0; b=0; c=1; d=0; e=0; #10;
a=0; b=1; c=0; d=0; e=0; #10;
a=1; b=0; c=0; d=0; e=0; #10;
a=1; b=0; c=1; d=0; e=0; #10;
a=1; b=1; c=1; d=1; e=1; #10;
$finish;
end
endmodule
