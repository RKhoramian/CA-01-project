`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:19:01 12/30/2022
// Design Name:   control_unit
// Module Name:   C:/ISE program/control_unit/test_control_unit.v
// Project Name:  control_unit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: control_unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_control_unit;

	// Inputs
	reg [3:0] opCode;

	// Outputs
	wire Jcont;
	wire RegWrite;
	wire RegDst;
	wire AluSrc;
	wire MemToReg;
	wire MemWrite;
	wire Branch;
	wire ExtOp;
	wire MemRead;
	wire [2:0] AluOp;

	// Instantiate the Unit Under Test (UUT)
	control_unit uut (
		.opCode(opCode), 
		.Jcont(Jcont), 
		.RegWrite(RegWrite), 
		.RegDst(RegDst), 
		.AluSrc(AluSrc), 
		.MemToReg(MemToReg), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.ExtOp(ExtOp), 
		.MemRead(MemRead), 
		.AluOp(AluOp)
	);

	initial begin
		// Initialize Inputs
		opCode = 4'b0000;
		#100;
		
      opCode = 4'b0001;
		#100;
		
		opCode = 4'b0010;
		#100;
		
		opCode = 4'b0011;
		#100;
		
		opCode = 4'b0100;
		#100;
	end
      
endmodule

