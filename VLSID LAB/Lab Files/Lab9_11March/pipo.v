module pipo (clk, rst, pi, po);
input clk ,rst ;
input [3:0] pi;
output reg [3:0] po;
wire [3:0] pi;
always @ (posedge clk)
begin
if (rst)
po <=4'b0000;
else 
po<=pi;
end
endmodule 

