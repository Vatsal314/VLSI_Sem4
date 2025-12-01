module equa_tb();
reg a,b,c,d,e;
wire y;
integer i;
equa uut (a,b,c,d,e,y);
initial begin
$monitor("Time = %0t, a = %0b, b = %0b, c = %0b, d = %0b,e = %0b y = %0b",$time,a,b,c,d,e,y);
a=0;b=0;c=0;d=0;e=0;
for(i=0;i<=32;i=i+1)
begin
{a,b,c,d,e}=i;
#10;
end
#300 $stop;
end
endmodule
