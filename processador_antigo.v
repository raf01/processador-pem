//module registrador (SW,LEDR,CLOCK_27);

module  processador(SW, KEY, LEDR);

input [4:0] SW;  // Dados de entrada do registrador
input [0:0] KEY; // Clock antigo
// input CLOCK_27;

output [3:0] LEDR; // Exibiçao dos bits do registrador 

wire [3:0] DBUS; // Ligaçao entre os switches e os bits do registrador
wire [3:0] RegAQ; // Ligacao entre a saida dos registradores e os LEDs
wire RegAWn, Clock, Clockn; 

assign LEDR [3:0] = RegAQ [3:0];
assign Clockn = !Clock, Clock = KEY[0];
assign RegAWn = SW[4];
assign DBUS[3:0] = SW[3:0];

reg4 AReg (DBUS, RegAWn, Clockn, RegAQ);

endmodule
	

module reg4 (D, Wn, clock, Q);

input [3:0] D;
input clock, Wn;

output reg [3:0] Q;

always @ (posedge clock)

	if (Wn==0)
		Q <= D;

endmodule
 