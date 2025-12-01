module dec5to32 (input [4:0]a, output [31:0]y);
assign y = 1 << a;   
endmodule

