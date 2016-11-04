//module registrador (SW,LEDR,CLOCK_27);
module  processador(SW, KEY, LEDR, LEDG);

input [8:0] SW;  // Dados de entrada da ULA + bit de enable
input [0:0] KEY; // Clock antigo

output [7:0] LEDR; // Exibiçao dos bits do registrador 
output [7:0] LEDG; // Exibiçao dos bits do registrador 


wire [7:0] barramentoDados; // Ligaçao entre os switches e os bits do registrador
wire [7:0] ledsRegSaida; // Ligacao entre a saida do registrador de saida e os LEDs
wire [7:0] ledsRegAcumulador; // Ligacao entre a saida do registrador acumulador e os LEDs
wire RegEnable, Clock, Clockn; 
wire [7:0] acumulador; //Registrador acumulador
wire [7:0] registradorSaida; // Registrador de saida
reg [7:0] memoriaRAM [0:15]; // Memoria RAM

assign LEDR [7:0] = ledsRegSaida [7:0]; //Atribuiçao dos leds
assign LEDG [3:0] = ledsRegAcumulador [3:0]; //Atribuiçao dos leds

assign Clockn = !Clock, Clock = KEY[0];
assign RegEnable = SW[8];
assign barramentoDados[7:0] = SW[7:0];


ULA mULA (barramentoDados, RegEnable, Clockn, ledsRegAcumulador, ledsRegSaida, acumulador, registradorSaida, opcode, operando, KEY[0]);

endmodule
