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


module sseg_1_testbench();
    integer i;
    reg [15:0] sw_t;
    reg clk_t;
    wire [3:0] an_t;
    wire dp_t;
    wire [6:0] sseg_t;

sseg1_wrapper dut(
.sw(sw_t),
.clk(clk_t),
.an(an_t),
.dp(dp_t),
.sseg(sseg_t)
);

initial begin 
sw_t= 16'h0000;
for (i= 16'h0000; i<=16'hffff; i=i+1) begin
    sw_t[7:0]= i;
    sw_t[15]= 1'b1; #10;
    sw_t[15]= 1'b0; #10;
end 
$finish ;
end 
endmodule 