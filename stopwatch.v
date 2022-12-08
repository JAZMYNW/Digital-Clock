`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2022 06:19:35 PM
// Design Name: 
// Module Name: stopwatch
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


module stopwatch(
input clk,
input reset,
input Start,
output reg [4:0] hours,
output reg [5:0] minutes,
output reg [5:0] seconds
    );
    
    
    
    reg [4:0] hours = 0;
    reg [5:0] minutes = 0;
    reg [5:0] seconds = 0;
    
    always@(posedge clk, negedge reset)begin
    
    if(reset)begin
    hours <= 0;
    minutes <= 0;
    seconds <= 0;
    end
    
    if(Start)begin
        //if(minutes == 0 && hours ==0)begin
            //hours <= hours + 1;
            //minutes <= 59;
            seconds <= seconds + 1;
        if(seconds == 59)begin
            minutes <= minutes + 1;
            seconds <= 0;
        end
        if(minutes == 59 && seconds == 59)begin
            hours <= hours + 1;
            minutes <= 0; 
        end
    end      
end
    
endmodule