programa
{

	inclua biblioteca Matematica-->mat
		
	funcao inicio()
	{
		real operacao_aritmetrica, IMC, Resultado
		real n1, n2
		real operacao
		real Soma,Sub,Mult,Div
		
		 escreva("===== CALCULADORA MULTIFUNÇÕES =====\n\n")
		 escreva("1- Operações Aritmétricas\n")
		 escreva("2- Cálculo de IMC\n")
		 escreva("3- Cálculo de Percentuais\n")
		 escreva("4- Cálculo de Potência\n")
		 escreva("5- Comparação de Números\n")
		 escreva("6- Raiz de um Número\n")
		 escreva("7- Expressões Logaritmicas")
		 escreva("0- Sair\n\n")
		 escreva("Escolha uma das Opções: ")
		 leia(operacao)
		 
		 limpa()
		 
		 se(operacao == 1){
		 escreva("======Operações Aritmétricas=======\n\n")
		 escreva("Escolha uma das Opções: \n")
		 escreva("1 para SOMAR \n")
		 escreva("2 para SUBTRAIR \n")
		 escreva("3 para MULTIPLICAR \n")
		 escreva("4 para DIVISÃO \n")
		 
		 
		 leia(operacao) 
		 
		 limpa() 
		 escreva("Informe o 1º Valor: ")
		 leia(n1)
		 escreva("\nInforme o 2º Valor: ")
		 leia(n2)

		  se(operacao == 1){
		 	Soma= n1 + n2
		 	escreva("\nO resultado da SOMA, é: ",Soma,"\n")
		  }senao se(operacao == 2){
		 	Sub= n1 - n2
		 	escreva("\nO resultado da SUBTRAÇAO, é: ",Sub,"\n")		 
		  }senao se(operacao == 3){
		 	Mult= n1 * n2
		 	escreva("\nO resultado da MULTIPLICAÇÃO, é: ",Mult,"\n")		 
		  }senao se(operacao == 4){
		 	Div= n1 / n2
		 	escreva("\nO resultado da DIVISÃO, é: ",Div,"\n")
		  }senao{
		 	escreva("\nEscreva Operação Inválida!!!!\n")
		  }
		 
		  }senao se(operacao == 2){
		     escreva("======Cálculo de IMC(Indice de Massa Corporal)=======\n\n")
		  	escreva("Insira o seu Peso em KG: ")
		  	leia(n1)
		  	escreva("\nInsira a sua Altura em Metros: ")
		  	leia(n2)
		  	
			IMC = n1 / (n2 * n2)
            se( IMC < 18.5){
        		escreva("\nBaixo Peso: ",IMC,"\n")
	      }senao se( IMC == 18.5 ou IMC < 24.9){
	     	escreva("\nPeso Normal: ",IMC,"\n")
	      }senao se( IMC == 25 ou IMC < 29.9){
	     	escreva("\nExcesso de peso: ",IMC,"\n")
	      }senao se(IMC == 30 ou IMC < 34.9){
	     	escreva("\nObesidade Grau I: ",IMC,"\n")
	      }senao se(IMC == 35 ou IMC < 39.9){
	     	escreva("\nObesidade Grau II: ",IMC,"\n")
	      }senao se(IMC >= 40){
	     	escreva("\nObesidade Mórbida: ","\n") 	
	      }
			  	
		}senao se(operacao == 3){
               escreva("======Cálculo de Percentuais=======\n\n")
		     escreva("Insira o Valor Total: ")
		     leia(n1)
		     escreva("\nInsira o Percentual(%) a ser Calculado: ")
		     leia(n2)         

		     Resultado = ( n2 * n1)/ 100        
		     escreva("\nO percentual do Valor é: ",Resultado," %\n") 
		

	    }senao se(operacao == 4){

	    	escreva("======Calculo de Potencia=======\n\n")
	    	escreva("Base: ")
	    	leia(n1)
	    	escreva("\nExpoente: ")
	    	leia(n2)

	    	Resultado = mat.potencia(n1, n2)

	    	escreva("\n",n1," Elevado a ",n2," é = ",Resultado,"\n\n")
	    	

	    }senao se(operacao == 5){
	    	escreva("======Comparação de dois Números=======\n\n")
	    	escreva("Insira o Primeiro Número: ")
	    	leia(n1)
	    	escreva("\nInsira o Segundo Número: ")
	    	leia(n2)

	     se(n1 == n2){
	     	escreva("\nSão Iguais\n")
	     }senao se(n1 > n2){
	     	escreva("\n",n1," É maior que ",n2,"\n",n2," É menor que ",n1,"\n")
	     }senao se(n1 < n2){
	          escreva("\n",n1," É menor que ",n2,"\n",n2," É maior que ",n1,"\n")
	     }
	    	
	    }senao se(operacao == 6){
	    	escreva("======Raiz de um Número=======\n\n")
	    	escreva("Insira o Radicando: ")
	    	leia(n1)
	    	escreva("\nInsira o Indice: ")
	    	leia(n2)

	    	Resultado = mat.raiz(n1, n2)
	    	escreva("\nA Raiz de : ",n1," No indice ",n2," é = ",Resultado,"\n")
	    	
	    }senao se(operacao == 7){
	     escreva("======Expressões Logaritmicas=======\n\n")
	    	escreva("Log de: ")
	    	leia(n1)
	    	escreva("\nBase: ")
	    	leia(n2)

	    	Resultado = mat.logaritmo(n1, n2)
	    	escreva("\nLog ",n1," Na base ",n2,"\n\nX = ",Resultado,"\n")
	    }
	
	
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3935; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */