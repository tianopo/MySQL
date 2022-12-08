programa
{
	
	funcao inicio()
	{
		inteiro linha
		cadeia livOcu[20]
		caracter dispo,sn
		
		para(linha = 0; linha < 20; linha++){
			
			escreva("Escolha o numero do quarto (de 1 a 20): ")
			leia(linha)

			escreva("O quarto ",linha," está livre ou ocupado? (O/L) ")
			leia(dispo)

			se(dispo == 'O' e linha == linha){
			
				se(livOcu[linha - 1] == "ocupado"){
					escreva("Quarto já ocupado \n")
					dispo = 'O'
				}
				se(dispo =='L'){
					livOcu[linha - 1] = "livre"
				}
				
				livOcu[linha - 1] = "ocupado"
			}
			se(dispo =='L'){
					livOcu[linha - 1] = "livre"
			}
			
			linha = 0
			
			escreva("Gostaria de continuar? (S/N) ")
			leia(sn)

			se(sn == 'N'){
				para(linha = 0; linha < 20; linha ++){
					
					se(livOcu[linha] == ""){
						livOcu[linha] = "livre"
					}
					
				}
			}
		}
		para(linha = 0; linha < 20; linha ++){
			escreva("Quarto ",linha + 1, " - ",livOcu[linha], "\n")
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 421; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */