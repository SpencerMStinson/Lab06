`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2020 08:35:19 PM
// Design Name: 
// Module Name: mux4_2b_testbench
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


module mux4_2b_testbench();
    reg [3:0] A_t;
    reg [3:0] B_t;
    reg sel_t;
    wire [3:0] out_t;
    
mux4_2b dut(
  .A(A_t), .B(B_t), .sel(sel_t), .out(out_t)
    );
  initial begin 
 A_t<=4'h8; B_t<= 4'h7; sel_t<=0; #10; sel_t<=1; #10;
 A_t<=4'h6; B_t<= 4'h5; sel_t<=0; #10; sel_t<=1; #10;
 A_t<=4'h4; B_t<= 4'h3; sel_t<=0; #10; sel_t<=1; #10;
 A_t<=4'h2; B_t<= 4'h1; sel_t<=0; #10; sel_t<=1; #10;
 
  
  $finish; 
  end 
endmodule
