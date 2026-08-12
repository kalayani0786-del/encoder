// 4-to-2 Encoder
// Inputs  : I[3:0]
// Outputs : Y[1:0]
// Valid   : Indicates whether an input is active

module encoder_4to2 (
    input  [3:0] I,
    output reg  [1:0] Y,
    output reg        Valid
);

    always @(*) begin
        Y = 2'b00;
        Valid = 1'b1;

        case (I)
            4'b0001: Y = 2'b00;
            4'b0010: Y = 2'b01;
            4'b0100: Y = 2'b10;
            4'b1000: Y = 2'b11;
            default: begin
                Y = 2'b00;
                Valid = 1'b0;
            end
        endcase
    end

endmodule