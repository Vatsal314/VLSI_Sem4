module nbitadder_tb();
parameter N = 6;
reg [N-1:0]a;
reg [N-1:0]b;
wire [N-1:0]sum;

nbitadder uut(.a(a),.b(b),.sum(sum));

initial begin
a = 6'd5;
b = 6'd7;
end

initial begin
$monitor($time,"a=%h,b=%h,sum=%b",a,b,sum);
#10 $finish;
end
endmodule
