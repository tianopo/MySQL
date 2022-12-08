programa
{
	
	funcao inicio()
	{
		inteiro idade, meia = 0, gratuidade = 0
		cadeia hospede
		real diaria, total = 0

		escreva("Qual o valor da diária? \n")
		leia(diaria)
		
		para(inteiro i = 0; i >= 0; i++){
			escreva("Informe o nome do seu hóspede: ")
			leia(hospede)
			
			se(hospede == "PARE"){
				pare
			}

			escreva("Informe a idade do hóspede: ")
			leia(idade)
			
			se(idade < 4){
				escreva(hospede," possui gratuidade. \n")
				gratuidade++
			}

			se(idade >= 80){
				escreva(hospede," paga meia. \n")
				total += diaria/2
				meia++
			}

			se(idade >= 4 e idade < 80){
				total += diaria
			}
		}
		escreva("Total de hospedagens: R$",total,"; ",gratuidade," gratuidade(s); ",meia," meia(s)")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 319; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */