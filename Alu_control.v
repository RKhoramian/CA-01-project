`timescale 1ns / 1ps
module AluControl(func, aluop, aluctr 
    );
	 
	 input [1:0] func;
	 input [2:0] aluop;
	 output reg [1:0]aluctr;
	 
    always@(*)
	 begin
    if(aluop == 3'b000)
		aluctr = func[1:0];
    else
		aluctr = (func[0] & func[1]) << 1 ;    
	 end 
    
endmodule
