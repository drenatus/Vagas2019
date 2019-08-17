#language: pt

Funcionalidade: Editar o nome do candidato

   Contexto:
      Dado que abro o browser e efetuo o login
      E clico em atualizar curriculo


   Esquema do Cenario: Editar nome do candidato


    E clico em editar na area nome
    E preencho o campo nome "<nome>"
    E clico no botao salvar
    Entao vejo a mensagem "<nome>" salvo com sucesso

    Exemplos:
    |nome       |
    |Diogo Teste|


