`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:36:01 12/30/2022 
// Design Name: 
// Module Name:    control_unit 
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
module control_unit(opCode , Jcont , RegWrite , RegDst , AluSrc , MemToReg , MemWrite , Branch , ExtOp , MemRead , AluOp
    );
			input [3:0]opCode;
			output reg Jcont;
			output reg RegWrite;
			output reg RegDst;
			output reg AluSrc;
			output reg MemToReg;
			output reg MemWrite;
			output reg Branch;
			output reg ExtOp;
			output reg MemRead;
			output reg [2:0]AluOp;
			
			always@(*)
		begin
			case(opCode)
			4'b0000:    //R-type
			begin
				Jcont =0;
				RegWrite = 1;
				RegDst = 1;
				AluSrc = 0;
				MemToReg = 0;
				MemWrite = 0;
				Branch = 0;
				ExtOp = 0;
				MemRead = 0;
				AluOp = 3'b000;
			end
			
			4'b0001:   //lw
			begin
				Jcont =0;
				RegWrite = 1;
				RegDst = 0;
				AluSrc = 1;
				MemToReg = 1;
				MemWrite = 0;
				Branch = 0;
				ExtOp = 1;
				MemRead = 1;
				AluOp = 3'b001;
			end
			
			4'b0010:   //sw
			begin
				Jcont =0;
				RegWrite = 0;
				RegDst = 0;
				AluSrc = 1;
				MemToReg = 0;
				MemWrite = 1;
				Branch = 0;
				ExtOp = 1;
				MemRead = 0;
				AluOp = 3'b010;
			end
			
			4'b0011:   //beq
			begin
				Jcont =0;
				RegWrite = 0;
				RegDst = 0;
				AluSrc = 0;
				MemToReg = 0;
				MemWrite = 0;
				Branch = 1;
				ExtOp = 1;
				MemRead = 0;
				AluOp = 3'b011;
			end
			
			4'b0100:   //j
			begin
				Jcont =1;
				RegWrite = 0;
				RegDst = 0;
				AluSrc = 0;
				MemToReg = 0;
				MemWrite = 0;
				Branch = 0;
				ExtOp = 0;
				MemRead = 0;
				AluOp = 3'b100;
			end
			endcase
		end
			

endmodule
