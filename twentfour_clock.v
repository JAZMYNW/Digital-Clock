module twentfour_clock(reset, clk, hour, min, sec);
    input reset, clk;
    output reg [4:0] hour;
    output reg [5:0] min;
    output reg [5:0] sec;
    
    
    reg setTime = 1; 
    reg setHour = 23; 
    reg setMin = 59; 
    reg setSec = 59;
    
    always@(posedge clk or posedge setTime or posedge reset)
    begin
        if(setTime == 1)
            begin
                hour = setHour;
                min = setMin;
                sec = setSec;
            end
        else if(reset == 1'b1) // active high reset
            begin
                hour = 0;
                min = 0;
                sec = 0;
            end
        else if(clk == 1) // each second begins 
            begin
                sec = sec + 1;
                if(sec == 60) // max seconds
                    begin
                        min = min + 1;
                        sec = 0;
                        if(min == 60) // max minutes
                            begin
                             if(hour == 23)begin // max hours
                                    hour = 1;
                                    min=0;
                                    end
                                    else begin
                                hour = hour + 1;
                                min = 0;
                                end;
                          
                            end
                    end
            end
    end
endmodule
