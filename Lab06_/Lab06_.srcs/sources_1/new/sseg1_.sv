`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2020 04:01:49 PM
// Design Name: 
// Module Name: sseg1_
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


module sseg1_(
    input [3:0] A,
    input [3:0] B,
    input sel,
    output [1:0] seg_un,
    output dp,
    output [6:0] sseg,
    output seg_l,
    output seg_r
    );
    
    wire [3:0] num;
    
    mux4_2b m1(
    .A(A), .B(B), 
    .sel(sel), .out(num)
    );
    
    sseg_decoder s1(
    .num(num), .sseg(sseg)
    );
    
    assign seg_r = sel;
    assign seg_l = ~sel;
    assign dp=1'b1 ;
    assign seg_un = 2'b11;
endmodule

