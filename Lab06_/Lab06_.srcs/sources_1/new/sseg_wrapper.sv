`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2020 09:39:12 PM
// Design Name: 
// Module Name: sseg_wrapper
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


module sseg_wrapper(
    input [15:0] sw,
    input clk,
    input [3:0] an,
    input dp,
    input [6:0] sseg
    );
    sseg_1 s1(
    .A( sw[7:4]), .B(sw[3:0]), .sel(sw[15]), .seg_l(an[1]), .seg_r(an[0]), .sseg(sseg), .seg_un(an[3:2]), .dp(dp),
    );
endmodule
