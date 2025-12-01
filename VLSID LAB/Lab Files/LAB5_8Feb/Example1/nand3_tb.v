module nand3_tb();
reg a,b,c;
wire out;
integer i;
nand3 uut (out,a,b,c);
initial begin
$monitor("Time = %0t, a = %0b, b = %0b, c = %0b, out = %0b ",$time,a,b,c,b);
a=0;b=0;c=0;
for(i=0;i<=7;i=i+1)
begin
{a,b,c}=i;
#10;
end
#300 $stop;
end
endmodule
