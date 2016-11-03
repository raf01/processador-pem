module ULA (barramentoDados, RegEnable, Clockn, ledsRegAcumulador, ledsRegSaida,
regAcumulador, regSaida);

input [7:0] barramentoDados;

reg [3:0] opcode;
reg [3:0] operando;

reg [7:0] regAcumulador;
reg [7:0] regSaida;

output reg [7:0] ledsRegSaida;
output reg [7:0] ledsAcumulador;

assign opcode <= barramentoDados[7:4];
assign operando <= barramentoDados[3:0];

always@(posedge clock)
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
			4'b0000:
				begin
				end
		endcase
		
		ledsRegAcumulador <= regAcumulador;
		ledsRegSaida <= regSaida;
		
	end
		
end
endmodule
