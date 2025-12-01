module vending_machine(
    input clk,
    input rst,
    input [1:0] in, // 01 = 5 rs, 10 = 10 rs
    output reg out,
    output reg [1:0] change,
  output reg [1:0] c_state,
  output reg [1:0] n_state
);

// State Definitions
parameter s0 = 2'b00; // No money inserted
parameter s1 = 2'b01; // 5 rs inserted
parameter s2 = 2'b10; // 10 rs inserted

 
always @(posedge clk or posedge rst) begin
    if (rst) begin
        c_state <= s0;
        n_state <= s0;
        change  <= 2'b00;
        out     <= 0;
    end else begin
        c_state <= n_state; 
    end
end

always @(c_state or in) begin
    case (c_state)

        s0: begin // 0 rs
            if (in <= 2'b00) begin
                n_state <= s0;
                out <= 0;
                change <= 2'b00;
            end else if (in <= 2'b01) begin
                n_state <= s1;
                out <= 0;
                change <= 2'b00;
            end else if (in <= 2'b10) begin
                n_state <= s2;
                out <= 0;
                change <= 2'b00;
            end
        end



        s1: begin // 5 rs
            if (in <= 2'b00) begin
                n_state <= s0;
                out <= 0;
                change <= 2'b01; // Return 5 rs
            end else if (in <= 2'b01) begin
                n_state <= s2;
                out <= 0;
                change <= 2'b00;
            end else if (in <= 2'b10) begin
                n_state <= s0;
                out <= 1;
                change <= 2'b00; // Bottle dispensed
            end
        end



        s2: begin // 10 rs
            if (in <= 2'b00) begin
                n_state <= s0;
                out <= 0;
                change <= 2'b10; // Return 10 rs
            end else if (in <= 2'b01) begin
                n_state <= s0;
                out <= 1;
                change <= 2'b00; // Bottle dispensed
            end else if (in <= 2'b10) begin
                n_state <= s0;
                out <= 1;
                change <= 2'b01; // Bottle dispensed + return 5 rs
            end
        end

        default: begin
            n_state <= s0;
            out <= 0;
            change <= 2'b00;
        end
    endcase
end

endmodule
