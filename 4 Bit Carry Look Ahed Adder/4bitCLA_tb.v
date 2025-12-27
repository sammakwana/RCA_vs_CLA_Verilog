`timescale 1ns / 1ps

module adder_TB;

reg  [3:0] a, b;
reg        cin;
wire [3:0] sum;
wire       cout;

// DUT instantiation
CLA_adder dut (
    .sum(sum),
    .cout(cout),
    .a(a),
    .b(b),
    .cin(cin)
);

initial begin
    // Waveform dump
    $dumpfile("CLA.vcd");
    $dumpvars(0, adder_TB);

    // Initialize
    cin = 0;

    #5 a = 4'b0001; b = 4'b0010;
    #5 a = 4'b0011; b = 4'b0100;
    #5 a = 4'b0101; b = 4'b0110;

    // Test with carry-in
    #5 cin = 1; a = 4'b1110; b = 4'b1111;

    #10 $finish;
end

initial begin
    $monitor("Time=%0t | a=%b b=%b cin=%b -> sum=%b cout=%b",
              $time, a, b, cin, sum, cout);
end

endmodule
