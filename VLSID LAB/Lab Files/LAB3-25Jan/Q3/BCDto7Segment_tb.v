module BCDto7Segment_tb();
reg [3:0] bcd;
wire [6:0] seg;
BCDto7Segment uut (.bcd(bcd),.seg(seg));

initial begin
bcd = 0;
#100;
        bcd = 4'b0000; #10; 
        bcd = 4'b0001; #10; 
        bcd = 4'b0010; #10; 
        bcd = 4'b0011; #10; 
        bcd = 4'b0100; #10; 
        bcd = 4'b0101; #10; 
        bcd = 4'b0110; #10; 
        bcd = 4'b0111; #10; 
        bcd = 4'b1000; #10; 
        bcd = 4'b1001; #10; 
        
    end  
endmodule




