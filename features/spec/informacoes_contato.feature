#language: pt

Funcionalidade: Editar informações de contato do candidato


  Contexto:

    Dado que abro o browser e efetuo o login
    E clico em atualizar curriculo
    E clico Editar na area de informacoes de contato


  Cenario: Editar informações de contato


    Quando preencho campo email "diogoteste@teste.com"
    E preencho o campo Confirmacao de email "diogoteste@teste.com"
    E preencho o campo telefone "115544332"
    E preencho o campo ddd do celular "11"
    E preencho o campo celular "98765432"
    E escolho Salvar informacoes de contatos
    Entao valido a mensagem: Dados salvos com sucesso no bloco Contatos





  Cenario: Tentar editar informações de contato com dados inválidos

    Quando preencho campo email "aaaaaaaa"
    Entao visualizo a mensagem Insira um e-mail válido
    E preencho o campo Confirmacao de email "bbbbbbbb"
    Entao visualizo a mensagem E-mail e confirmação e-mail não confere
    E limpo o campo telefone
    Entao visualizo a mensagem O campo telefone é obrigatório
    E preencho o campo ddd do celular ""
    Entao visualizo a mensagem O campo ddd é obrigatório
    E limpo o campo celular
    Entao visualizo a mensagem O campo Telefone Celular é obrigatório



















