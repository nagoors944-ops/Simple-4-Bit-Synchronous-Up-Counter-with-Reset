`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2026 16:10:17
// Design Name: 
// Module Name: Up_Counter_tb23
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module up_counter_tb;

reg clk;
reg reset;
wire [3:0] count;

up_counter56 uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Test sequence
initial begin
    reset = 1;
    #20;

    reset = 0;
    #200;

    reset = 1;
    #20;

    reset = 0;
    #100;

    $finish;
end

endmodule

