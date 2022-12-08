programa
{

	/*declaração de variáveis*/
	real convidados
	real cafe
	real agua
	real salgadinhos
	real totalCafe
	real totalAgua
	real totalSalgadinhos
	
	funcao inicio()
	{
		escreva("Quantidade de convidados")
		leia(convidados)
	
		cafe = 0.2
		
		agua = 0.5

		salgadinhos = 7

		totalCafe = convidados * cafe
		totalAgua = convidados * agua
		totalSalgadinhos = convidados * salgadinhos

		se (convidados > 350) {
			escreva(convidados," é a quantidade de convidados superior à capacidade máxima")//saída de dados
		}senao{
			escreva(totalCafe," litros de café ",totalAgua," litros de água ",totalSalgadinhos," salgadinhos.")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 281; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */