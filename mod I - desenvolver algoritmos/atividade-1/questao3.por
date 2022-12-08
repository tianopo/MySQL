programa
{
	real convidados
	
	funcao inicio()
	{
		escreva("Quantidade de convidados: ")
		leia(convidados)

		se(convidados <= 0 ou convidados > 350){
			escreva("Número de convidados inválido")
		}
		se(convidados <= 150 e convidados > 0){
			escreva("Use o auditório Alfa")
		}
		se(convidados > 150 e convidados <= 150 + 70){
			escreva("Serão ", convidados," convidados no auditório Alfa, inclua mais ", convidados - 150," assentos extras")
		}
		se(convidados > 150 + 70 e convidados <= 350){
			escreva("Use o auditório Beta")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 87; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */