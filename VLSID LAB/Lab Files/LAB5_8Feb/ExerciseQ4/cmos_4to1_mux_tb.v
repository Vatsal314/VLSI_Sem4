module cmos_4to1_mux_tb;
    reg I0, I1, I2, I3;
    reg S1, S0;
    wire Y;

    cmos_4to1_mux uut (
        .I0(I0), .I1(I1), .I2(I2), .I3(I3),
        .S1(S1), .S0(S0),
        .Y(Y)
    );

    initial begin
        $monitor("S1=%b S0=%b I0=%b I1=%b I2=%b I3=%b -> Y=%b", S1, S0, I0, I1, I2, I3, Y);
        I0 = 1; I1 = 0; I2 = 1; I3 = 0;
        
        S1 = 0; S0 = 0; #10; // Expect Y = I0 = 1
        S1 = 0; S0 = 1; #10; // Expect Y = I1 = 0
        S1 = 1; S0 = 0; #10; // Expect Y = I2 = 1
        S1 = 1; S0 = 1; #10; // Expect Y = I3 = 0

        I0 = 0; I1 = 1; I2 = 0; I3 = 1;
        
        S1 = 0; S0 = 0; #10; // Expect Y = I0 = 0
        S1 = 0; S0 = 1; #10; // Expect Y = I1 = 1
        S1 = 1; S0 = 0; #10; // Expect Y = I2 = 0
        S1 = 1; S0 = 1; #10; // Expect Y = I3 = 1
        $finish;
    end
endmodule
