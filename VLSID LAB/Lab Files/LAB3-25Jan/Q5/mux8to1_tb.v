module mux8to1_tb();
reg [7:0] data;
reg [2:0] sel;
reg en;
wire out;

mux8 uut (.data(data), .sel(sel),.en(en),.out(out));

initial begin
        data = 8'b10101010;
        sel = 3'b000;
        en = 0;
        #100;
        en = 1; sel = 3'b000; #10;
        en = 1; sel = 3'b001; #10;
        en = 1; sel = 3'b010; #10;
        en = 1; sel = 3'b011; #10;
        en = 1; sel = 3'b100; #10;
        en = 1; sel = 3'b101; #10;
        en = 1; sel = 3'b110; #10;
        en = 1; sel = 3'b111; #10;
        en = 0; sel = 3'b000; #10;
        
    end
endmodule

