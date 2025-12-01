module half_adder_testbench;
    reg A, B;
    wire Sum, Carry;

    cmos_half_adder uut (
        .A(A),
        .B(B),
        .Sum(Sum),
        .Carry(Carry)
    );

    initial begin
        $display("A\tB\tSum\tCarry");
        $monitor("%b\t%b\t%b\t%b", A, B, Sum, Carry);
        {A, B} = 2'b00; #10;
        {A, B} = 2'b01; #10;
        {A, B} = 2'b10; #10;
        {A, B} = 2'b11; #10;
        $finish;
    end
endmodule

