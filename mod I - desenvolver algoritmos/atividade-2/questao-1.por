programa
{
	funcao inicio()
	{
		cadeia d
		inteiro qntDias
		real diaria

		escreva("Escreva o valor da diária: ")
		leia(diaria)

		escreva("Escreva a quantidade de dias: ")
		leia(qntDias)

		enquanto(qntDias < 0 ou qntDias > 30 ou diaria < 0){
			se(qntDias < 0 ou qntDias > 30){
				escreva("Quantidade de dias inválido, insira novamente: ")
				leia(qntDias)
			}
			se(diaria < 0){
				escreva("Valor de diária inválido, insira novamente: ")
				leia(diaria)
			}
		}
		escreva("No final terá de pagar o valor de: ", diaria * qntDias, "\n")
		escreva("Fim do Programa")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 73; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */