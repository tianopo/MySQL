programa
{
	
	funcao inicio()
	{	
		inteiro opcao,numero, cadastro = 0, outro = 0,numerosCadastrados=0
		cadeia nome[15],procura
		
		para(numero = 0; numero >= 0; numero++){
				
			escreva("Digite 1- cadastrar; 2- pesquisar; 3- sair \n")
			leia(opcao)

			se(opcao == 1){
				se(numerosCadastrados < 15){
					escreva("Nome do hóspede: ")
					leia(nome[numerosCadastrados])
					numerosCadastrados++
				}senao{
					escreva("Máximo de cadastros atingido \n")
				}
			}
			se(opcao == 3){
				pare
			}
				
			se(opcao == 2){
				escreva("Nome do hóspede: ")
				leia(procura)
					
				para(outro = 0; outro < numerosCadastrados; outro++){
						
					se(procura == nome[outro]){
						cadastro++
						escreva("O hóspede ",nome[outro], " foi enontrado no indice ", outro + 1 , "\n")
					}
				}
				se (outro == numerosCadastrados e cadastro == 0){
							
						escreva("Hóspede não encontrado \n")
				}
			}	
		}
		escreva("Fim de programa")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 841; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */