`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:51:11 12/30/2022 
// Design Name: 
// Module Name:    Alu 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Alu(a, b, sel, c, z
    );
	 input [17:0]a;
	 input [17:0]b;
    input [1:0]sel;
    output reg[17:0]c;
	 output reg z;
	 
	 always @(*)
	 begin
		   case(sel)
			2'b00 : c = a + b;
			2'b01 : c = a - b;
			2'b10 : c = a | b;
			2'b11 : c = a & b;
			endcase
			
			if (c == 18'b000000000000000000)
				z = 1;
			else
				z = 0;
			/*case(c)
			18'b000000000000000000 : z = 1;
			18'b000000000000000001 : z = 0;
			endcase*/
	 end


endmodule
