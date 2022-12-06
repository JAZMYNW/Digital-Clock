`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2022 06:14:06 PM
// Design Name: 
// Module Name: countdown_timer_testbench
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


module countdown_timer_testbench(
    
    );
    
    reg clk;
    reg reset;
    reg Start;
    reg H;
    reg M;
    reg S;
    // Outputs
    wire [5:0] seconds;
    wire [5:0] minutes;
    wire [4:0] hours;
    
    countdown_timer ct1(.clk(clk),.reset(reset),.H(H),.M(M),.S(S),.Start(Start),.seconds(seconds),.minutes(minutes),.hours(hours),.led(led));
    
    initial clk = 0;
    always #50000000 clk = ~clk;
    
    initial begin
    reset = 1;
    #50000000
    reset = 0;
    Start = 0;
    H = 0;
    M = 1;
    S = 0;
    #50000000
    reset = 0;
    Start = 0;
    H = 0;
    M = 1;
    S = 0;
    #50000000
    reset = 0;
    Start = 0;
    H = 0;
    M = 0;
    S = 0;
    #50000000
    reset = 0;
    Start = 0;
    H = 0;
    M = 0;
    S = 0;
    #50000000
    reset = 0;
    Start = 1;
    H = 0;
    M = 0;
    S = 0;
    #50000000
    reset = 0;
    Start = 1;
    H = 0;
    M = 0;
    S = 0;
    #50000000
    reset = 0;
    Start = 1;
    H = 0;
    M = 0;
    S = 0;
    #50000000
    reset = 0;
    Start = 1;
    H = 0;
    M = 0;
    S = 0;#50000000
    reset = 0;
    Start = 1;
    H = 0;
    M = 0;
    S = 0;#50000000
    reset = 0;
    Start = 1;
    H = 0;
    M = 0;
    S = 0;
    end
    
endmodule
