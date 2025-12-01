module nbitadder(a,b,sum); 
parameter N=6;
input [N-1:0]a;
input [N-1:0]b;
output [N-1:0]sum;
wire [N-1:0]cout;
wire carry;
genvar i;
for(i=0;i<N;i=i+1)
begin
if(i==0)
fulladder fulladder_0(a[0],b[0],0,sum[0],cout[0]);
else
fulladder fulladder_0(a[i],b[i],cout[i-1],sum[i],cout[i]);
end 
assign carry = cout[N-1];
endmodule

module fulladder(a,b,c,sum,cout);
input a,b,c;
output sum,cout;
assign sum = a^b^c;
assign cout = a&b|b&c|a&c;
endmodule
