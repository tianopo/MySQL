programa
{
	
	funcao inicio()
	{
		inteiro nQuarto, hospede
		real diaria, total = 0

		escreva("Quantidade de hóspedes: ")
		leia(hospede)

		para(inteiro i = 1; i <= hospede; i++){
			
			escreva("Número do quarto: ")
			leia(nQuarto)

			escreva("Valor da diária: ")
			leia(diaria)
			
			escreva("O hóspede ",i," estará no quarto ", nQuarto, " e pagará o valor de ", diaria, "\n")

			total += diaria
		}
		escreva("O total de diárias: ", total)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 186; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */