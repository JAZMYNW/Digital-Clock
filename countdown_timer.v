`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2022 05:02:14 PM
// Design Name: 
// Module Name: countdown_timer
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


module countdown_timer(
input clk,
input reset,
input H,
input M,
input S,
input Start,
output reg [4:0] hours,
output reg [5:0] minutes,
output reg [5:0] seconds,
output reg led
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
    else begin
    if(H && hours < 24)
    hours <= hours + 1;  
    if(M && minutes < 59)
    minutes <= minutes + 1;
    if(S && seconds < 59)
    seconds = seconds + 1;
    
    if(Start)begin
    if(minutes == 0 && hours > 0)begin
    hours <= hours - 1;
    minutes <= 59;
    seconds <= 59;
    end
    if(seconds == 0 && minutes > 0)begin
    minutes <= minutes - 1;
    seconds <= 59;
    end
    
    if(seconds < 60 && seconds > 0)begin
    seconds <= seconds - 1;
    end
   
    
    if(seconds == 0 && minutes == 0 && hours == 0)begin
    led <= 1;
    end    
    end      
    end
    end
    
endmodule
