module vending_machine_tb;
// Inputs
reg clk;
reg [1:0] in;
reg rst;

// Outputs
wire out;
wire [1:0] change;
wire [1:0] c_state;
wire [1:0] n_state;


vending_machine uut (
    .clk(clk),
    .rst(rst),
    .in(in),
    .out(out),
    .change(change),
    .c_state(c_state),
    .n_state(n_state)
);


always #5 clk = ~clk; 


initial begin
   
   
    clk = 0;
    rst = 1;
    in = 2'b00; 
   
    #10 rst = 0; 

    
 @(posedge clk) in = 2'b10; // Insert 10 rs
 @(posedge clk) in = 2'b10; // Insert another 10 rs (Should dispense + change)
 @(posedge clk) in = 2'b01; // Insert 5 rs
 @(posedge clk) in = 2'b01; // Insert another 5 rs (Should reach 10 rs)
 @(posedge clk) in = 2'b00; // No further input

    
    #50 $finish;
end

endmodule
