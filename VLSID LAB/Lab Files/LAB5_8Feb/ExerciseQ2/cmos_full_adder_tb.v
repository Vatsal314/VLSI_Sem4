module full_adder_testbench;
    reg A, B, Cin;
    wire Sum, Cout;

    // Instantiate Full Adder
    cmos_full_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Stimulus Generation
    initial begin
        $display("A\tB\tCin\tSum\tCout");
        $monitor("%b\t%b\t%b\t%b\t%b", A, B, Cin, Sum, Cout);

        // Test all input combinations
        {A, B, Cin} = 3'b000; #10;
        {A, B, Cin} = 3'b001; #10;
        {A, B, Cin} = 3'b010; #10;
        {A, B, Cin} = 3'b011; #10;
        {A, B, Cin} = 3'b100; #10;
        {A, B, Cin} = 3'b101; #10;
        {A, B, Cin} = 3'b110; #10;
        {A, B, Cin} = 3'b111; #10;

        $finish;
    end
endmodule

