module BinaryToExcess3(input [3:0] binary,output reg [3:0] excess3);
    always @(binary) begin
        excess3 = binary + 4'b0011; 
    end
endmodule

