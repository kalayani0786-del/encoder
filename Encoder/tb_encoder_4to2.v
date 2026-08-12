`timescale 1ns/1ps

module tb_encoder_4to2;

    reg  [3:0] I;
    wire [1:0] Y;
    wire       Valid;

    // Instantiate Encoder
    encoder_4to2 DUT (
        .I(I),
        .Y(Y),
        .Valid(Valid)
    );

    // Generate waveform
    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, tb_encoder_4to2);
    end

    initial begin
        $display(" I     | Y  | Valid");
        $display("-------------------");

        I = 4'b0000;
        #10;
        $display("%b | %b |   %b", I, Y, Valid);

        I = 4'b0001;
        #10;
        $display("%b | %b |   %b", I, Y, Valid);

        I = 4'b0010;
        #10;
        $display("%b | %b |   %b", I, Y, Valid);

        I = 4'b0100;
        #10;
        $display("%b | %b |   %b", I, Y, Valid);

        I = 4'b1000;
        #10;
        $display("%b | %b |   %b", I, Y, Valid);

        // Invalid multiple-input case
        I = 4'b0011;
        #10;
        $display("%b | %b |   %b", I, Y, Valid);

        $finish;
    end

endmodule