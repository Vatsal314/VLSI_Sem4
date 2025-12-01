module mux(a,b,c,d,s0,s1,y);
input a,b,c,d,s0,s1;
output y;
assign y= (~s0&~s1&a)|(~s0&s1&b)|(s0&~s1&c)|(s0&s1&d);
endmodule
