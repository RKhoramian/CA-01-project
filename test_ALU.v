`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:24:52 12/30/2022
// Design Name:   Alu
// Module Name:   C:/ISE program/ALU/test_ALU.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_ALU;

	// Inputs
	reg [17:0] a;
	reg [17:0] b;
	reg [1:0] sel;

	// Outputs
	wire [17:0] c;
	wire z;

	// Instantiate the Unit Under Test (UUT)
	Alu uut (
		.a(a), 
		.b(b), 
		.sel(sel), 
		.c(c), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		a = 1;
		b = 2;
		sel = 0;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		a = 1;
		b = 2;
		sel = 1;
		
		// Wait 100 ns for global reset to finish
		#100;
      
		a = 1;
		b = 2;
		sel = 2;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		a = 1;
		b = 2;
		sel = 3;
		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
	end
      
endmodule

