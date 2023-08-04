`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/04 14:24:26
// Design Name: 
// Module Name: top
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


module top(clk, rst, start, dout);

input clk, rst, start;
output [31:0] dout;

wire signed [31:0] dout_layer1;
wire layer1_done, layer2_done;
layer1 u0(.clk(clk), .rst(rst), .start(start), .dout(dout_layer1), .done(layer1_done)); 
layer2 u1(.clk(clk), .rst(rst), .start(layer1_done), .din_layer2(dout_layer1), .dout(dout), .done(layer2_done));
endmodule
