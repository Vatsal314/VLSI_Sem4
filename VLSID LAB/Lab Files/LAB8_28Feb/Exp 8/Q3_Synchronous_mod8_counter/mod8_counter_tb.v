module tb_mod8_counter;
    reg clk;
    reg reset;
    wire [2:0] count;

    mod8_counter uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        reset = 1; #20;       
        reset = 0; #80;       
        reset = 1; #20;      
        reset = 0; #40;       
        $stop;
    end
    initial begin
        $monitor("Time: %0t | Reset: %b | Count: %b", $time, reset, count);
    end
endmodule
