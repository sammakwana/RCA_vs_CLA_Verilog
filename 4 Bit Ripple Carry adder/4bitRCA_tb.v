`timescale 1ns / 1ps

module ripple_carry_adder_4bit_TB;

    reg  [3:0] a, b;
    reg        cin;
    wire [3:0] sum;
    wire       cout;

    // Instantiate DUT
    ripple_carry_adder_4bit dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        // Dump waveform
        $dumpfile("ripple_carry_adder_4bit.vcd");
        $dumpvars(0, ripple_carry_adder_4bit_TB);

        // Test cases
        cin = 0;

        #10 a = 4'b0001; b = 4'b0010;  // 1 + 2
        #10 a = 4'b0011; b = 4'b0100;  // 3 + 4
        #10 a = 4'b0111; b = 4'b0001;  // 7 + 1
        #10 a = 4'b1111; b = 4'b0001;  // Overflow case
        #10 a = 4'b1010; b = 4'b0101;  // Random

        #10 $finish;
    end

endmodule
