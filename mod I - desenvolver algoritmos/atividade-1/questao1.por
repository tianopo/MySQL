programa
{

	/*declaração de variáveis*/
	real garcom
	real trabalho
	real horas
	real total
	
	funcao inicio()
	{
		escreva("Quantidade de garçons: ")
		leia(garcom)
		
		trabalho = 10.5
		
		escreva("Quantidade de horas trabalhadas: ")
		leia(horas)

		total = trabalho * garcom * horas

		escreva("O custo total que o hotel terá com a contratação desses profissionais é ", total)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 187; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */