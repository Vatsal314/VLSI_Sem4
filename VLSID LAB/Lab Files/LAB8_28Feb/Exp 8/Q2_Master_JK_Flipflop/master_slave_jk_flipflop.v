module master_slave_jk_flipflop (
    input J,
    input K,
    input clk,
    input rst, 
    output reg Q,
    output Q_bar
);
    reg master_Q;
    assign Q_bar = ~Q;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            master_Q <= 1'b0; 
        end else begin
            case ({J, K})
                2'b00: master_Q <= master_Q;  
                2'b01: master_Q <= 1'b0;    
                2'b10: master_Q <= 1'b1;     
                2'b11: master_Q <= ~master_Q; 
            endcase
        end
    end

    always @(negedge clk or posedge rst) begin
        if (rst) begin
            Q <= 1'b0; 
        end else begin
            Q <= master_Q; 
        end
    end

endmodule
