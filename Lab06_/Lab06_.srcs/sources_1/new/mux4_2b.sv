`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2020 08:33:48 PM
// Design Name: 
// Module Name: mux4_2b
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


module mux4_2b(
    input [3:0] A,
    input [3:0] B,
    input sel,
    output [3:0] out
    );
    
    assign out = sel ? B : A ;
endmodule
