module tb_master_slave_jk_flipflop;
    reg J;
    reg K;
    reg clk;
    reg rst;
    wire Q;
    wire Q_bar;

    master_slave_jk_flipflop uut (
        .J(J),
        .K(K),
        .clk(clk),
        .rst(rst),
        .Q(Q),
        .Q_bar(Q_bar)
    );

    always #5 clk = ~clk; 
    initial begin
        clk = 0;
        J = 0;
        K = 0;
        rst = 0;
        rst = 1; #10;
        rst = 0;

        J = 0; K = 0; #10;

        J = 1; K = 0; #10;

        J = 0; K = 1; #10;

        J = 1; K = 1; #20;

        rst = 1; #10;
        rst = 0;
        $stop;
    end
endmodule

