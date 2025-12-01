module mux32_tb();
reg [31:0] i;
reg [4:0] s;
wire y;
mux32 uut( .i(i) , .s(s), .y(y) );
initial begin 
i=32'h000000;
s=5'b0;
i=32'hCCCCCCCC; s=5'd0;
#2 i=32'hCCCCCCC; s=5'd1;
#2 i=32'hCCCCCCC; s=5'd2;
#2 i=32'hCCCCCCC; s=5'd3;
#2 i=32'hCCCCCCC; s=5'd4;
#2 i=32'hCCCCCCC; s=5'd5;
#2 i=32'hCCCCCCC; s=5'd6;
#2 i=32'hCCCCCCC; s=5'd7;
#2 i=32'hCCCCCCC; s=5'd8;
#2 i=32'hCCCCCCC; s=5'd9;
#2 i=32'hCCCCCCC; s=5'd10;
#2 i=32'hCCCCCCC; s=5'd11;
#2 i=32'hCCCCCCC; s=5'd12;
#2 i=32'hCCCCCCC; s=5'd13;
#2 i=32'hCCCCCCC; s=5'd14;
#2 i=32'hCCCCCCC; s=5'd15;
#2 i=32'hCCCCCCC; s=5'd16;
#2 i=32'hCCCCCCC; s=5'd17;
#2 i=32'hCCCCCCC; s=5'd18;
#2 i=32'hCCCCCCC; s=5'd19;
#2 i=32'hCCCCCCC; s=5'd20;
#2 i=32'hCCCCCCC; s=5'd21;
#2 i=32'hCCCCCCC; s=5'd22;
#2 i=32'hCCCCCCC; s=5'd23;
#2 i=32'hCCCCCCC; s=5'd24;
#2 i=32'hCCCCCCC; s=5'd25;
#2 i=32'hCCCCCCC; s=5'd26;
#2 i=32'hCCCCCCC; s=5'd27;
#2 i=32'hCCCCCCC; s=5'd28;
#2 i=32'hCCCCCCC; s=5'd29;
#2 i=32'hCCCCCCC; s=5'd30;
#2 i=32'hCCCCCCC; s=5'd31;
#2 i=32'hCCCCCCC; s=5'd32;
end

initial begin
$monitor($time,"i=%h,s=%d,y=%b",i,s,y);
#66 $finish;
end
endmodule


