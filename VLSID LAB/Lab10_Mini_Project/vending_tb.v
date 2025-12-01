module vending_machine_tb;
reg clk;
reg [1:0] in;
reg rst;
wire [1:0] c_state;
wire [1:0] n_state;
wire out;
wire [1:0] change;

vending_machine uut(.clk(clk), .rst(rst), .in(in), .out(out), .change(change), .c_state(c_state), .n_state(n_state));

initial begin

// $dumpfile ("vending_machine.vcd");
// $dumpvars (0,vending_machine_tb);

rst=1;
clk=0;

#6 rst =0;
in=0;
#11 in=0;
#16 in=1;
#25 $finish;
end

always #5 clk = ~clk;
endmodule

