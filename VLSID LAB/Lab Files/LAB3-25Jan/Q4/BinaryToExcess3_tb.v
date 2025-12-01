module BinaryToExcess3_tb();
reg [3:0] binary;
wire [3:0] excess3;
   
BinaryToExcess3 uut (.binary(binary),.excess3(excess3));

initial begin
binary = 0;
#100;
        binary = 4'b0000; #10; 
        binary = 4'b0001; #10; 
        binary = 4'b0010; #10; 
        binary = 4'b0011; #10; 
        binary = 4'b0100; #10; 
        binary = 4'b0101; #10; 
        binary = 4'b0110; #10; 
        binary = 4'b0111; #10; 
        binary = 4'b1000; #10; 
        binary = 4'b1001; #10; 
        
    end      
endmodule

