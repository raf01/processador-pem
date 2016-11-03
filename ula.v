module ula(SW, LEDG, CLOCK_27);

input [8:0]SW;
input CLOCK_27;
output reg[3:0] LEDG;
wire [2:0]regA;
wire [2:0]regB;
wire [2:0]op;
reg [2:0]dado_out;
assign op = SW[8:6];
assign regA = SW[5:3];
assign regB = SW[2:0];
always @(CLOCK_27)
	begin
		case(op)
			0: LEDG <= regA + regB;
			1: LEDG <= regA - regB;		
			2: LEDG <= (regA * regB);
			3: LEDG <= (regA / regB);
			4: LEDG <= (regA & regB);
			5: LEDG <= (regA | regB);
			6: LEDG <= (regA ^ regB);
			//7: LEDG <= (regA ~| regB);
		endcase
	end


endmodule 