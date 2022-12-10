`timescale 1ns / 1ps

module tobcd(
	input [5:0] hour, min, sec, 
		output reg [5:0] hour10, hour1, min10, min1, sec10, sec1
    );
    

	parameter    zero =  4'b0000, // 0
				 one =   4'b0001, // 1 
				 two =   4'b0010, // 2 
				 three = 4'b0011, // 3 
				 four =  4'b0100, // 4 
				 five =  4'b0101, // 5 
				 six =   4'b0110, // 6 
				 seven = 4'b0111, // 7 
				 eight = 4'b1000, // 8
				 nine =  4'b1001; // 9
			
				 
	 always @ (hour)
			begin
				case(hour/10)
					4'd0 : hour10 = zero; // 0
					4'd1 : hour10 = one; // 1
					4'd2 : hour10 = two; // 2
					4'd3 : hour10 = three; // 3
					4'd4 : hour10 = four; // 4
					4'd5 : hour10 = five; // 5
					4'd6 : hour10 = six; // 6
					4'd7 : hour10 = seven; // 7
					4'd8 : hour10 = eight; // 8
					4'd9 : hour10 = nine; // 9
					default : hour10 = zero; 
			  endcase
			 end //always

	 always @ (hour)
			begin
				case(hour%10)
					4'd0 : hour1 = zero; // 0
					4'd1 : hour1 = one; // 1
					4'd2 : hour1 = two; // 2
					4'd3 : hour1 = three; // 3
					4'd4 : hour1 = four; // 4
					4'd5 : hour1 = five; // 5
					4'd6 : hour1 = six; // 6
					4'd7 : hour1 = seven; // 7
					4'd8 : hour1 = eight; // 8
					4'd9 : hour1 = nine; // 9
					default : hour1 = zero; 
			  endcase
			 end



	 always @ (min)
			begin
				case(min/10)
					4'd0 : min10 = zero; // 0
					4'd1 : min10 = one; // 1
					4'd2 : min10 = two; // 2
					4'd3 : min10 = three; // 3
					4'd4 : min10 = four; // 4
					4'd5 : min10 = five; // 5
					4'd6 : min10 = six; // 6
					4'd7 : min10 = seven; // 7
					4'd8 : min10 = eight; // 8
					4'd9 : min10 = nine; // 9
					default : min10 = zero; 
			  endcase
		  end
		  
	  always @ (min)
			begin
				case(min%10)
					4'd0 : min1 = zero; // 0
					4'd1 : min1 = one; // 1
					4'd2 : min1 = two; // 2
					4'd3 : min1 = three; // 3
					4'd4 : min1 = four; // 4
					4'd5 : min1 = five; // 5
					4'd6 : min1 = six; // 6
					4'd7 : min1 = seven; // 7
					4'd8 : min1 = eight; // 8
					4'd9 : min1 = nine; // 9
					default : min1 = zero; 
			  endcase
		  end
		  
	  always @ (sec)
			begin
				case(sec/10)
					4'd0 : sec10 = zero; // 0
					4'd1 : sec10 = one; // 1
					4'd2 : sec10 = two; // 2
					4'd3 : sec10 = three; // 3
					4'd4 : sec10 = four; // 4
					4'd5 : sec10 = five; // 5
					4'd6 : sec10 = six; // 6
					4'd7 : sec10 = seven; // 7
					4'd8 : sec10 = eight; // 8
					4'd9 : sec10 = nine; // 9
					default : sec10 = zero; 
			  endcase
		  end
		  
	  always @ (sec)
			begin
				case(sec%10)
					4'd0 : sec1 = zero; // 0
					4'd1 : sec1 = one; // 1
					4'd2 : sec1 = two; // 2
					4'd3 : sec1 = three; // 3
					4'd4 : sec1 = four; // 4
					4'd5 : sec1 = five; // 5
					4'd6 : sec1 = six; // 6
					4'd7 : sec1 = seven; // 7
					4'd8 : sec1 = eight; // 8
					4'd9 : sec1 = nine; // 9
					default : sec1 = zero; 
			  endcase
		  end
endmodule
