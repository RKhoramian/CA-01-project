`timescale 1ns / 1ps
module tst_aluControl;

	// Inputs
	reg [1:0] func;
	reg [2:0] aluop;

        // Outputs
	wire [1:0] aluctr;

	// Instantiate the Unit Under Test (UUT)
	AluControl uut (
		.func(func), 
		.aluop(aluop), 
		.aluctr(aluctr)
	);

	initial begin
		// add
		func = 2'b00;
		aluop = 000;
		#100;
                
                // sub
		func = 2'b01;
		aluop = 000;
		#100;
		
                // or
		func = 2'b10;
		aluop = 000;
		#100;
		
                // and
		func = 2'b11;
		aluop = 000;
		#100;

                // lw
                func = 2'b00;
		aluop = 001;
		#100;
		
		func = 2'b10;
		aluop = 001;
		#100;
               
                func = 2'b01;
		aluop = 001;
		#100;
         
                func = 2'b11;
		aluop = 001;
		#100;
               
                // sw
                func = 2'b00;
		aluop = 010;
		#100;

                func = 2'b10;
		aluop = 010;
		#100;

                func = 2'b01;
		aluop = 010;
		#100;

                func = 2'b11;
		aluop = 010;
		#100;

                // beg
                func = 2'b00;
		aluop = 011;
		#100;

                func = 2'b10;
		aluop = 011;
		#100;

                func = 2'b01;
		aluop = 011;
		#100;

                func = 2'b11;
		aluop = 011;
		#100;

                // j
                func = 2'b00;
		aluop = 100;
		#100;

                func = 2'b10;
		aluop = 100;
		#100;

                func = 2'b01;
		aluop = 100;
		#100;

                func = 2'b11;
		aluop = 100;
		#100;

		
	end
      
endmodule
