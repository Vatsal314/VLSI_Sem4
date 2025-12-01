module pipo_tb;
reg clk;
reg rst;
reg [3:0] pi;
wire [3:0] po;

pipo_seq uut (.clk(clk), .rst(rst), .pi(pi), .po(po));

initial begin
clk=0;
rst=0;
pi=4'b0001;
#5 rst=1'b1;
#5 rst=1'b0;
#10 pi=4'b1001;
#10 pi=4'b1010;
#10 pi=4'b1011;
#10 pi=4'b1110;
#10 pi=4'b1111;
#10 pi=4'b0000;
end

always #5 clk=~clk;

initial #100 $finish;
initial 
$monitor ("Time: %0t, pi:%b, po:%b", $time, pi, po);
endmodule
