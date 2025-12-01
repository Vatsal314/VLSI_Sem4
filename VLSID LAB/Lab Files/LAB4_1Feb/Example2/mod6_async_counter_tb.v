module mod6_async_counter_tb();
reg clk;
reg reset;
wire [2:0]q;

mod6_async_counter uut(.clk(clk),.reset(reset),.q(q));

initial begin
$dumpfile("dump.vcd");
clk=0;
forever #5 clk=~clk;
end

initial begin
$monitor("Time=%0t|Reset=%b|Counter=%b",$time,reset,q);

reset=1; #10;
reset=0; #100;
$finish;
end
endmodule
