#language: pt

Funcionalidade: Editar informações de contato do candidato


  Contexto:

    Dado que abro o browser e efetuo o login
    E clico em atualizar curriculo


 Esquema do Cenario: Editar informações de contato

    Quando clico Editar na area de informacoes de contato
    Quando preencho campo email "<email>"
    E preencho o campo Confirmacao de email "<email>"
    E preencho o campo telefone "<tel>"
    E preencho o campo ddd do celular "<dddcel>"
    E preencho o campo celular "<cel>"
    E escolho Salvar informacoes de contatos
    Entao valido a mensagem: Dados salvos com sucesso no bloco Contatos

     Exemplos:
    |email                |tel        |dddcel |cel        |
    |diogoteste@teste.com |115544332  |11     |99876543   |























