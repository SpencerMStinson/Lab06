`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2020 09:01:30 PM
// Design Name: 
// Module Name: sseg_decoder_testbench
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


module sseg_decoder_testbench( );

integer i;

reg [3:0] num_t;
wire [6:0] sseg_t;

sseg_decoder dut( 
.num(num_t), .sseg(sseg_t)
);

initial   begin 
for (i=0; i<=4'hf; i=i+1)   begin 
     num_t = i;
     #10;
    end 
    $finish;
end
endmodule
