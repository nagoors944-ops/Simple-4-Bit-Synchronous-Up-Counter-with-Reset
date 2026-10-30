`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2026 16:09:18
// Design Name: 
// Module Name: Up_Counter56
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



module up_counter56 (
    input wire clk,
    input wire reset,
    output reg [3:0] count
);

always @(posedge clk) begin
    if (reset)
        count <= 4'b0000;
    else
        count <= count + 1'b1;
end

endmodule

