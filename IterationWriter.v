`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:32:52 07/14/2017 
// Design Name: 
// Module Name:    IterationWriter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module IterationWriter(
    input clk,
    input grab_data,
    output finished,
    input data_in,
    output [7:0] data_out,
    output [11:0] data_pixel_x,
    output [11:0] data_pixel_y,
    output [11:0] game_pixel_x,
    output [11:0] game_pixel_y,
    input framebuffer_mutex
    );


endmodule
