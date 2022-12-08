programa
{
	
	funcao inicio()
	{	
		real diaria, total=0
		inteiro idade, meia = 0, gratuidade = 0, idadeJovem = 10000, idadeVelho = 0
		cadeia hospede, maisVelho= "", maisJovem = ""
		caracter continuar
		
		escreva("Gostaria de preencher a lista do hotel. \nDigite 'S' para sim e 'N' para não: ")
		leia(continuar)

		escreva("Qual o valor da diária? \n")
		leia(diaria)
		
		para(inteiro i = 0; i >= 0; i++){

			se(continuar == 'N'){
			pare
			}
			
			escreva("Informe o nome do seu hóspede: ")
			leia(hospede)

			escreva("Informe a idade do hóspede: ")
			leia(idade)
			
			se(idade < 4){
				escreva(hospede," possui gratuidade. \n")
				gratuidade++
			}

			se(idade < idadeJovem){
					idadeJovem = idade
					maisJovem = hospede
				}

			se(idade >= 80){
				escreva(hospede," paga meia. \n")
				total += diaria/2
				meia++
			}
			
			se(idade > idadeVelho){
					idadeVelho = idade
					maisVelho = hospede
				}

			se(idade >= 4 e idade < 80){
				total += diaria
			}
			
			escreva("Gostaria de continuar a preencher a lista do hotel. \nDigite 'S' para sim e 'N' para não: ")
			leia(continuar)

			se(continuar == 'N'){
				pare
			}
		}
		escreva("Total de hospedagens: R$",total,"; ",gratuidade," gratuidade(s); ",meia," meia(s) \n")
		
		se(idadeVelho > idadeJovem){
			escreva("O hóspede mais velho é o ", maisVelho," com ", idadeVelho," ano(s)", "\n")
		}

		se(idadeJovem < idadeVelho){
			escreva("O hóspede mais jovem é o ", maisJovem," com ",idadeJovem, " ano(s)")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 118; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 */