`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2022 05:36:03 PM
// Design Name: 
// Module Name: stopwatch_tb
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


module stopwatch_tb(
    
    );
    
    reg clk;
    reg reset;
    reg Start;
       
    wire [4:0] hours;
    wire [5:0] minutes;
    wire [5:0] seconds;

    stopwatch UUT(.clk(clk), .reset(reset), .Start(Start), .hours(hours), .minutes(minutes), .seconds(seconds));
    
    initial clk = 0;
    always #50000000 clk = ~clk;
    
    initial begin
    reset = 1;
   
    #50000000
    reset = 0;
    Start = 0;
    
    #50000000
    reset = 0;
    Start = 1;
 
    end
endmodule