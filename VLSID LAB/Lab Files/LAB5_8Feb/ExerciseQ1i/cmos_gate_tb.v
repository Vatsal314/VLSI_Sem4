module cmos_gate_tb();
    reg A, B, C, D, E;
    wire F;
    cmos_gate uut(
        .A(A), .B(B), .C(C), 
        .D(D), .E(E), 
        .F(F)
    );
    initial begin
        {A, B, C, D, E} = 5'b00000; #10;
{A, B, C, D, E} = 5'b00001; #10;
{A, B, C, D, E} = 5'b00010; #10;
{A, B, C, D, E} = 5'b00011; #10;
{A, B, C, D, E} = 5'b00100; #10;
{A, B, C, D, E} = 5'b00101; #10;
{A, B, C, D, E} = 5'b00110; #10;
{A, B, C, D, E} = 5'b00111; #10;
{A, B, C, D, E} = 5'b01000; #10;

        {A, B, C, D, E} = 5'b01010; #10;
        {A, B, C, D, E} = 5'b10101; #10;
{A, B, C, D, E} = 5'b11111; #10;
        $finish;
    end
    initial begin
        $monitor("Time=%0t A=%b B=%b C=%b D=%b E=%b F=%b", 
                 $time, A, B, C, D, E, F);
    end
endmodule

