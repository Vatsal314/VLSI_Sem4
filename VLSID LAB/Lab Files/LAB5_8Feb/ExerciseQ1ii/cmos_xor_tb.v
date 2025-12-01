module xor_testbench;
    reg A, B;
    wire F;

    cmos_xor uut (
        .A(A),
        .B(B),
        .F(F)
    );

    initial begin
        $monitor("A=%0b, B=%0b, F=%0b", A, B, F);
        
        A = 0; B = 0;
        #10;
        A = 0; B = 1;
        #10;
        A = 1; B = 0;
        #10;
        A = 1; B = 1;
        #10;
        $finish;
    end
endmodule

