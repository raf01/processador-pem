module ULA (barramentoDados, RegEnable, Clockn, ledsRegAcumulador, ledsRegSaida,
regAcumulador, regSaida, opcode, operando, KEY[0]);

input [7:0] barramentoDados;
input RegEnable;

 wire Clock;
 output Clockn;
 input [0:0]KEY;
 output[3:0] opcode;
 output[3:0] operando;
 
output reg[3:0] regAcumulador; //registrador acumulador 
output reg[7:0] regSaida; //registrador de saida
output[7:0] ledsRegSaida; // leds registrador de saida
output[3:0] ledsRegAcumulador; // leds registrador acumulador

/*--------------------------------------------------*/

	assign opcode[3:0] = barramentoDados[7:4];
	assign operando[3:0] = barramentoDados[3:0];
	assign ledsRegAcumulador[3:0] = regAcumulador[3:0];
	assign ledsRegSaida[7:0] = regSaida[7:0];
	
	assign Clockn = !Clock;
	assign Clock = KEY[0];
	
	
always@(posedge Clockn)
begin

	if (RegEnable == 0)
	begin
		case(opcode)
			4'b0000:
				begin
					// NOP
				end
			4'b0001:
				begin
				 regAcumulador[3:0] = operando[3:0];
					
				end
			4'b0010:
				begin
					regSaida = regAcumulador[3:0] + operando[3:0]; 
				end
			4'b0000:
				begin
				end
			4'b0000:
				begin
				end
			4'b0000:
				begin
				end
			4'b0000:
				begin
				end
			4'b0000:
				begin
				end
			4'b0000:
				begin
				end
			4'b0000:
				begin
				end
			4'b0000:
				begin
				end
		endcase
		
		
		
	end
		
end
endmodule
