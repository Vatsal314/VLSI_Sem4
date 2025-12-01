module tb_universal_shift_register;
    reg clk;
    reg reset;
    reg [1:0] mode;
    reg [3:0] data_in;
    reg serial_in;
    wire [3:0] data_out;

    universal_shift_register uut (
        .clk(clk),
        .reset(reset),
        .mode(mode),
        .data_in(data_in),
        .serial_in(serial_in),
        .data_out(data_out)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        reset = 1;      
        mode = 2'b00;   
        data_in = 4'b0000;
        serial_in = 0; #20;            
        reset = 0;     
        mode = 2'b11;  
        data_in = 4'b1101; #10;            
        mode = 2'b01; 
        serial_in = 1; #40; 
        mode = 2'b10;  
        serial_in = 0; #40;
        mode = 2'b00; #20;
        $stop;
    end
    
endmodule

