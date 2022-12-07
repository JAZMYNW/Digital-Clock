`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2022 05:00:30 PM
// Design Name: 
// Module Name: twentfour_clocktb
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


module twentfour_clocktb();
reg clk, reset, setTime; 
    
    reg [4:0] setHour;
    reg [5:0] setMin;
    reg [5:0] setSec; 

    wire [4:0] hour;
    wire [5:0] min;
    wire [5:0] sec;

    twentfour_clock tw2(.reset(reset), .clk(clk), .setTime(setTime), .setHour(setHour), .setMin(setMin), .setSec(setSec), .hour(hour), .min(min), .sec(sec));
   
   
   always begin
        #500000000  clk = ~clk;
    end
    
    initial begin
    clk = 0; reset = 1; setTime = 0;
    #5 reset = 0;
    
    #65 setTime = 1; 
        setHour = 23; 
        setMin = 59; 
        setSec = 59;
    #10 setTime = 0;     
    end
endmodule   

