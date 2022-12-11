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
    
    else if(Start)begin
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
