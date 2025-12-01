module mux32 (i,s,y);
input [31:0] i;
input [4:0] s;
output y;
assign y= i[s];
endmodule 
