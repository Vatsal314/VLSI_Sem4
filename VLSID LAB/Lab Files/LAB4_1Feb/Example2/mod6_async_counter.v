module mod6_async_counter(input clk,input reset,output reg[2:0]q);

always @(posedge clk or posedge reset)
begin
if (reset)
q<=3'b000;
else if (q==3'b101)
q<=3'b000;
else 
q<=q+1;
end
endmodule
