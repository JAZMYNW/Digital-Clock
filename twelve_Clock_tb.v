module twelve_Clock_tb();
reg clk, reset, setTime; 
    
    reg [4:0] setHour;
    reg [5:0] setMin;
    reg [5:0] setSec; 

    wire [4:0] hour;
    wire [5:0] min;
    wire [5:0] sec;

    twelve_Clock tw1(.reset(reset), .clk(clk), .setTime(setTime), .setHour(setHour), .setMin(setMin), .setSec(setSec), .hour(hour), .min(min), .sec(sec));
   
   
   always begin
        #100000000  clk = ~clk;
    end
    
    initial begin
    clk = 0; reset = 1; setTime = 0;
    #5 reset = 0;
    
    #65 setTime = 1; 
        setHour = 12; 
        setMin = 59; 
        setSec = 59;
    #10 setTime = 0;     
    end
endmodule   
