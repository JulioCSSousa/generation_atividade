programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> mat
	//Exercicio1

	/*Dado um vetor contendo 10 números inteiros não ordenados, construa um algoritmo que consiga ordenar o vetor 
	  em ordem decrescente, como mostra o exemplo abaixo:
	 */
	funcao OrdemDecrescente(inteiro lista[]){
          inteiro tamanho = 10
          inteiro aux
	
	        para (inteiro i = 0; i < tamanho - 1; i++)
	        {
	            para (inteiro j = 0; j < tamanho - 1 - i; j++)
	            {
	                se (lista[j] < lista[j + 1])
	                {
	                    aux = lista[j]
	                    lista[j] = lista[j + 1]
	                    lista[j + 1] = aux
	                }
	            }
	        }
	        para (inteiro i = 0; i < tamanho; i++)
	        {
	            escreva(lista[i], " ")
	        }
		}
	

	/*Elabore um algoritmo que leia 10 números inteiros e armazene em um vetor. Em seguida, mostre na tela:
	Todos os elementos nos índices ímpares do vetor 
	Todos os elementos do vetor que são números pares
	A Soma de todos os elementos do vetor
	A Média de todos os elementos do vetor, armazenada em uma variável do tipo real */

	funcao todosIndicesImpares(inteiro num[]){
		
		   inteiro tamanho = u.numero_elementos(num)
		   

	        inteiro valores_indices_impares[10] 
	        inteiro qtd = 0 
	

	        para (inteiro i = 0; i < tamanho; i++)
	        {
	            se (i % 2 != 0)
	            {
	                valores_indices_impares[qtd] = num[i]
	                qtd++ 
	            }
	        }
	
	        para (inteiro i = 0; i < qtd; i++)
	        {
	            escreva(valores_indices_impares[i], ", ")
	        }
		}
		
		funcao todosElementosPares(inteiro num[]){
			
		   inteiro tamanho = u.numero_elementos(num)
		  
	        inteiro valores_pares[10] 
	        inteiro qtd = 0 
	

	        para (inteiro i = 0; i < tamanho; i++)
	        {
	            se (num[i] % 2 == 0)
	            {
	                valores_pares[qtd] = num[i]
	                qtd++ 
	            }
	        }
	
	        para (inteiro i = 0; i < qtd; i++)
	        {
	            escreva(valores_pares[i], ", ")
	        }
	        }
		
		funcao somaDosElementos(inteiro num[]){
			inteiro sum = 0
			para (inteiro i=0 ; i<10; i++){
				sum += num[i]
				}

			escreva(sum)
			
			}

			
		
		funcao media(inteiro num[]){
			inteiro sum = 0
			real media1 = 0.0
			
			para (inteiro i=0 ; i<10; i++){
				sum += num[i]
				}
			media1 = sum / u.numero_elementos(num)
			mat.arredondar(media1, 2)
			escreva(media1)
			
			}


	
	funcao inicio()
	{
		inteiro n[10] = {2, 5, 6, 8, 10, 20, 35, 45, 9, 110}

		escreva("Ordem Decrescente \n")
		OrdemDecrescente(n)
		escreva("\ntodosIndicesImpares \n")
		todosIndicesImpares(n)
		escreva("\ntodos Elementos Pares \n")
		todosElementosPares(n)
		escreva("\nSoma \n")
		somaDosElementos(n)
		escreva("\nMedia")

		media(n)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2567; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */