#language: pt

Funcionalidade: Editar dados pessoais

   Contexto:
   Dado que abro o browser e efetuo o login
   E clico em atualizar curriculo
   E clico Editar na area Dados pessoais

Esquema do Cenario: Atualizar dados pessoais <vScenario>


    Quando preencho a data de nascimento "<data_nascimento>"
    E clico "<estado civil>" no campo Estado civil
    E seleciono "<filhos>" na opcao Possui filhos
    E seleciono "<pais>" na opcao Pais de nacionalidade
    E seleciono tipo do documento "<tipo de documento>"
    E preencho o numero do documento "<numdoc>"
    E e clico no botão salvar
    Entao valido a mensagem: Dados salvos com sucesso no bloco Dados Pessoais


    Exemplos:
    |vScenario                 |data_nascimento|estado civil|filhos |pais   |tipo de documento |numdoc     |
    |com estado civil Solteiro |01/01/1990     |Solteiro(a) |Não    |Canadá |Passport (CAN)    |123456789  |
    |com estado civil Casado   |01/01/1980     |Casado(a)   |Não    |Canadá |Passport (CAN)    |123456789  |


   Cenario: Tentar atualizar dados pessoais usando dados inválidos

     Quando preencho a data de nascimento "00/00/00"
     Entao vejo a mensagem Data de nascimento precisa ter o seguinte formato
     E limpo o campo Número de documento
     Entao vejo a mensagem O campo número é obrigatório











