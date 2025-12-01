module counter(clk,rst,m,count);
input clk,rst,m;
output reg[3:0]count;

always@(posedge clk or negedge rst)
begin
if(!rst)
count=0;
else begin
if(m)
count=count+1;
else 
count=count-1;
end
end
endmodule

