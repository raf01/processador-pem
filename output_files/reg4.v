/**
	Modulo que implementa um registrador de 4 bits.
*/

module reg4 (D, Wn, clock, Q);

input [3:0] D;
input clock, Wn;

output reg [3:0] Q;

always @ (posedge clock)

	if (Wn==0)
		Q <= D;

endmodule
