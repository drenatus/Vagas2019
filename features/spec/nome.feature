#language: pt

Funcionalidade: Editar o nome do candidato

   Contexto:
      Dado que abro o browser e efetuo o login
      E clico em atualizar curriculo
      E clico em editar na area nome


    Cenario: Editar nome do candidato



    Quando preencho o campo nome "Diogo Teste"
    E clico no botao salvar
    E clico em editar na area nome
    E preencho e confirmo o campo nome "Diogo Teste"
    E clico no botao salvar
    Entao vejo "Diogo Teste" no campo nome


   Cenario: Tentar editar nome do candidato com dados inválidos

     Quando limpo o campo nome
     Entao valido a mensagem O campo nome é obrigatório



