programa
{
	cadeia nomeMenor = ""//nome da empresa com menor valor
	real menorValor = 1000000000 //Menor valor do resultado do orçamento
	inteiro resultado //resultado do orçamento da empresa
	
	funcao inicio()
	{	
		caracter sn
		
		para(inteiro i = 0; i >=0; i++){

			empresa()
			
			escreva("Deseja informar novos dados? (S/N) \n")
			leia(sn)

			se(sn == 'N'){
				escreva("O orçamento de menor valor é o de ", nomeMenor, " por ", menorValor)
				pare
			}
		}
		
	}

	funcao empresa(){

		cadeia nome //nome da empresa
		real valorServico, descontoPer //valor do serviço e percentual de desconto respectivamente.
		inteiro qntManut, qntDescMin //quantidade de aparelhos em manutenção,
		//quantidade minima de aparelhos para ter desconto.
		//entrada de dados
		escreva("Qual o nome da empresa? \n")
		leia(nome)

		escreva("Qual o valor por aparelho? \n")
		leia(valorServico)

		escreva("Qual é a quantidade de aparelhos em manutenção? \n")
		leia(qntManut)

		escreva("Qual é o percentual de desconto? \n")
		leia(descontoPer)

		escreva("Quantidade mínima de aparelhos para obter desconto? \n")
		leia(qntDescMin)

		resultado = valorServico * qntManut

		se(qntManut >= qntDescMin){
			resultado = resultado - (resultado * descontoPer) / 100
		}

		se(resultado < menorValor){
			nomeMenor = nome
			menorValor = resultado
		}

		escreva("O serviço de ", nome, " custará R$ ", resultado, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1126; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */