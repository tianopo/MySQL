programa
{
	
	funcao inicio()
	{
		inteiro nNomes,ordem
		cadeia nomes[5], mulher, homem
		caracter sexo[5]

		para(nNomes = 0; nNomes < 5; nNomes ++){

			escreva("Qual o nome do hóspede? ")
			leia(nomes[nNomes])
			
			escreva("QUal o sexo do hóspede? responda 'M' para masculino ou 'F' para feminino. ")
			leia(sexo[nNomes])

		}
		para(nNomes = 0; nNomes < 5; nNomes ++){

			escolha(sexo[nNomes]){
				caso 'F':
					escreva(nomes[nNomes])
					escreva(", ")
			}	
		}
		
		para(nNomes = 0; nNomes < 5; nNomes ++){

			escolha(sexo[nNomes]){
				caso 'M':
					escreva(nomes[nNomes])
				
				
				se(nNomes == 4){
						escreva(".")
						pare
				}
				
				escreva(", ")
			}
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 460; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */