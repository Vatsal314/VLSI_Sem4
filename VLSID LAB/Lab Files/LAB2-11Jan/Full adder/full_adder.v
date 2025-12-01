module fulladder(a,b,c,y,cout);
input a,b,c;
output y,cout;
assign y=a^b^c;
assign cout= a&b|b&c|a&c;
endmodule
