
module tb_BCDto7Segment;

// Testbench signals
reg [3:0] bcd;
wire [6:0] seg;

// Instantiate the BCD to 7-segment decoder
BCDto7Segment uut (
    .bcd(bcd),
    .seg(seg)
);

initial begin
    // Initialize the BCD input
    bcd = 4'b0000;
    
    // Apply test vectors
    $display("Testing BCD to 7-segment display decoder...");
    $monitor("Time: %0d, BCD: %b, SEG: %b", $time, bcd, seg);

    #10 bcd = 4'b0000; // Test 0
    #10 bcd = 4'b0001; // Test 1
    #10 bcd = 4'b0010; // Test 2
    #10 bcd = 4'b0011; // Test 3
    #10 bcd = 4'b0100; // Test 4
    #10 bcd = 4'b0101; // Test 5
    #10 bcd = 4'b0110; // Test 6
    #10 bcd = 4'b0111; // Test 7
    #10 bcd = 4'b1000; // Test 8
    #10 bcd = 4'b1001; // Test 9
    #10 bcd = 4'b1010; // Test invalid input
    #10 $stop;
end

endmodule
