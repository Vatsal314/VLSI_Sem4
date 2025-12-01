module cmos_2to4_decoder_tb;
    reg S1, S0;
    wire Y0, Y1, Y2, Y3;

    cmos_2to4_decoder uut (
        .S1(S1), .S0(S0),
        .Y0(Y0), .Y1(Y1), .Y2(Y2), .Y3(Y3)
    );

    initial begin
        $monitor("S1=%b S0=%b -> Y0=%b Y1=%b Y2=%b Y3=%b", S1, S0, Y0, Y1, Y2, Y3);

        S1 = 0; S0 = 0; #10; // Expect Y0=1, Y1=0, Y2=0, Y3=0
        S1 = 0; S0 = 1; #10; // Expect Y0=0, Y1=1, Y2=0, Y3=0
        S1 = 1; S0 = 0; #10; // Expect Y0=0, Y1=0, Y2=1, Y3=0
        S1 = 1; S0 = 1; #10; // Expect Y0=0, Y1=0, Y2=0, Y3=1
        $finish;
    end
endmodule
