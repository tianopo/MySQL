programa
{
	
	funcao inicio()
	{
		cadeia semana
		real horario
		cadeia loja

		escreva ("escreve o dia da semana sem acentuações: ")
		leia(semana)

		escreva ("escreva o horário: ")
		leia(horario)
		

		se(semana == "sabado" ou semana == "domingo"){

			se(horario < 7 ou horario > 15){
				
				escreva("Restaurante indisponível")
			}senao{
				
				escreva("nome da empresa: ")
				leia(loja)
				escreva("Restaurante reservado para a loja ",loja,": ",semana," às ",horario,"0hrs")
			}
		}

		se(semana == "segunda" ou semana == "terca" ou semana == "quarta" ou semana == "quinta" ou semana == "sexta"){

			se(horario < 7 ou horario > 23){
				
				escreva("Restaurante indisponível")
			}senao{
				
				escreva("nome da empresa ")
				leia(loja)
				escreva("Restaurante reservado para a loja ",loja,": ",semana," às ",horario,"0hrs")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 254; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */