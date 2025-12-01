module pipo_seq(clk,rst,pi,po);
input clk,rst;
input [3:0] pi;
output [3:0] po;
wire [3:0] pi;
reg [3:0] po;

always @(posedge clk)

begin
if (rst)
po<= 4'b0000;
else
po<= pi;
end
endmodule
