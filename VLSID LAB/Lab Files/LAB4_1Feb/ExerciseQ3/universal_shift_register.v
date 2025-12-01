module universal_shift_register (
    input wire clk,
    input wire reset,         
    input wire [1:0] mode,   
    input wire [3:0] data_in, 
    input wire serial_in,   
    output reg [3:0] data_out 
);

    always @(posedge clk) begin
        if (reset) 
            data_out <= 4'b0000;
        else begin
            case (mode)
                2'b00:   
                    data_out <= data_out;
                2'b01:   
                    data_out <= {serial_in, data_out[3:1]};
                2'b10:   
                    data_out <= {data_out[2:0], serial_in};
                2'b11:   
                    data_out <= data_in;
                default: 
                    data_out <= data_out;
            endcase
        end
    end
endmodule
