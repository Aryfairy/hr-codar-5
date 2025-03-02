programa
{
    inteiro senha
    cadeia nome
   	real saldo = 1500.00// Float

	funcao inicio() {

    escreva("======================")
    escreva("\n   CAIXA ELETRÔNICO \n")
    escreva("======================\n")

    escreva("█▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█\n")
    escreva("█░░╦─╦╔╗╦─╔╗╔╗╔╦╗╔╗░░█\n")
    escreva("█░░║║║╠─║─║─║║║║║╠─░░█\n")
    escreva("█░░╚╩╝╚╝╚╝╚╝╚╝╩─╩╚╝░░█\n")
    escreva("█▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█\n")

    //Ao acessar o sistema, pergunte o nome do usuário e diga "Olá {Nome} é um prazer ter você por aqui!"
    
    escreva("\n\nQual o seu nome? \n")
    leia(nome)
    escreva("Olá ", nome, " é um prazer ter você por aqui!\n\n")

		inteiro opcao = 0

    //No menu principal, a ordem das opções deve ser: Saldo, Extrato, Saque, Depósito, Transferência e Sair.
    escreva("\n========================\n")
		escreva("Escolha uma opção:\n")
		escreva("1. Ver saldo\n")
    escreva("2. Ver extrato\n")
    escreva("3. Fazer saque\n")
		escreva("4. Fazer depósito\n")
		escreva("5. Fazer transferência\n")
		escreva("6. Sair\n")
    escreva("========================\n")
		leia(opcao)

    //Na função "inicio", utilize escolha/caso (switch/case) para validar a opção escolhida pelo usuário.
		escreva("\nA opção selecionada foi: " , opcao , "\n")

    escolha(opcao) {
    	caso 1: 
        verSaldo()
        pare
    	caso 2:
			  verExtrato()
        pare
    	caso 3:
			  fazerSaque()
        pare
    	caso 4:
			  fazerDeposito()
        pare
      caso 5:
        fazerTransferencia()
        pare
      caso 6:
        sair()
        pare
    	caso contrario:
			erro()
      pare
    }
  }

  //Sempre que o usuário for acessar o saldo, sacar, retirar o extrato ou transferir dinheiro é necessário que ele informe uma senha. Essa senha deve ser validada com uma condicional. A senha é 3589.

	funcao verSaldo(){
    escreva("\n\n======== SALDO =========\n")

    escreva("Digite a senha:\n")
    leia(senha)
    se( senha != 3589){
      escreva("\nSenha inválida. Tente novamente!\n")
      inicio()
    }
    senao{
	  escreva("\n", nome, " seu saldo atual é: ", saldo, "\n")
    escreva("\n===========================\n")
    inicio()
    }
    

	}
	
  //Caso o usuário informe um valor para depósito igual ou menor que zero, não deixe a operação ocorrer. Exiba uma mensagem de "Operação não autorizada".
	funcao fazerDeposito() {

		real deposito
		
    escreva("\n======== DEPÓSITO =========\n")
		escreva("\nQual o valor para depósito? ")
		leia(deposito)
		
    se (deposito >= 1) {
			saldo = saldo + deposito
			escreva("\nO saldo atual é:", saldo)
    }
		senao{
			escreva("\nPor favor, informe um número válido.\n")
			inicio()
		} 
    
    escreva("\n===========================\n")
	}
	
  //Sempre que o usuário for sacar dinheiro, o valor restante não pode ser negativo, ou seja, caso o usuário tente sacar mais do que tem em saldo, a ação não deve ocorrer. Exiba uma mensagem de "Operação não autorizada".
  //Sempre que o usuário for sacar dinheiro, o valor a ser sacado não pode ser igual ou menor que zero. Exiba uma mensagem de "Operação não autorizada".
	funcao fazerSaque(){
	
		real saque
	
    escreva("\n======== SAQUE =========\n")
    escreva("\nDigite a senha:\n")
    leia(senha)
    se(senha != 3589){
      escreva("\nSenha inválida. Tente novamente!\n")
      inicio()
    }
    senao{
		  escreva("\nQual o valor para saque? \n")
		    leia(saque)
	
		  se (saque > saldo ou saque <= 0){
	        escreva("\nOperação não autorizada.\n")
	        inicio()
		  }
    senao {
			saldo = saldo - saque
			escreva(nome, " seu saldo atual é: ", saldo)
		}
    escreva("\n===========================\n")
    }
	}


  //Adicionar a opção para ver o extrato (Coloque algumas compras ou depósitos fictícios).
  funcao verExtrato(){
    escreva("\nDigite a senha:\n")
    leia(senha)
    se(senha != 3589){
      escreva("\nSenha inválida. Tente novamente!\n")
      inicio()
    }
    senao{
    escreva("\n======== EXTRATO =========\n")
    escreva("01/02/2025 - Compra no mercado: R$ -800,00\n")
    escreva("05/02/2025 - Depósito via PIX: R$ +200,00\n")
    escreva("10/02/2025 - Pagamento conta de luz: R$ -250,00\n")
    escreva("15/02/2025 - Depósito em dinheiro: R$ +400,00\n")
    escreva("===========================\n")
    inicio()
  }
  }
  
  //Adicionar a opção para fazer uma transferência. A transferência consiste em você informar o número de uma conta (pode ser qualquer número, mas obrigatoriamente um número, ou seja, nenhum outro caractere deve ser aceito), perguntar o valor da transferência e remover o valor da conta da mesma forma como na ação do saldo. Caso o usuário tente transferir mais do que tem em saldo, a ação não deve ocorrer. Exiba uma mensagem de "Operação não autorizada".

  funcao fazerTransferencia() {
    inteiro trans
    real valT
    escreva("\n======== TRANSFERÊNCIA =========\n")
    escreva("\nDigite a senha:\n")
    leia(senha)
    se(senha != 3589){
      escreva("\nSenha inválida. Tente novamente!\n")
      inicio()
    }
    senao{
    escreva("\nInforme o número da conta para transferência: \n")
    leia(trans)
    escreva("Digite o valor que deseja transferir:\n")
    leia(valT)

    se (valT > saldo ou trans <= 0){
      escreva("\nOperação não autorizada.\n")
      inicio()
    }
    senao se(valT >= 1){
      escreva("\nTransferência realizada com sucesso!\n")
      escreva("Você transferiu: ", valT, " para a conta: ", trans)
      saldo = saldo - valT
      escreva("\n" , nome, " O valor atual do seu saldo após a transferência é:\n", saldo)
    } senao {
      escreva("\nOperação não autorizada.\n")
    }
    escreva("\n===========================\n")
  }
  }

  //Atualize a função "erro" com as novas opções do menu.
	funcao erro() {
		escreva("█▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█\n")
    escreva("█░░      OPÇÃO     ░░█\n")
    escreva("█░░    INVÁLIDA!   ░░█\n")
    escreva("█▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█\n")
    escreva("\nPor favor, verifique abaixo as opções válidas:\n")
    escreva("1. Ver saldo\n")
    escreva("2. Ver extrato\n")
    escreva("3. Fazer saque\n")
    escreva("4. Fazer depósito\n")
    escreva("5. Fazer transferência\n")
    escreva("6. Sair\n")
    escreva("========================\n")
		inicio()
	}

    //Quando o usuário escolher sair do sistema, exiba uma mensagem agradecendo por utilizar os serviços do banco: "{Nome}, foi um prazer ter você por aqui!".

	funcao sair(){
    escreva(nome , " foi um prazer ter você por aqui!\n\n")
		escreva("Programa encerrado")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 47; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */