

#language: pt

Funcionalidade: Editar o endereco do candidato

  Contexto:
    Dado que abro o browser e efetuo o login
    E clico em atualizar curriculo
    E clico em editar endereco

  Cenario: Editar endereço do currículo


  Quando seleciono o Pais "Brasil"
  E digito o CEP "04763290"
  E seleciono o Estado "São Paulo"
  E seleciono a Cidade "São Paulo"
  E preencho o campo Bairro "Bairro Teste"
  E preencho o campo Endereco "Rua Teste, N1"
  E clico em Salvar endereco
  Entao valido a mensagem: Dados salvos com sucesso no bloco Endereço



  Cenario: Tentar editar endereço do currículo com dados inválidos

    Quando seleciono o Pais ""
    Entao visualizo a mensagem O campo país é obrigatório
    E seleciono o Pais "Brasil"
    E limpo o campo CEP
    Entao visualizo a mensagem O campo cep é obrigatório
    E seleciono o Estado "São Paulo"
    E seleciono o Estado ""
    Entao visualizo a mensagem O campo estado é obrigatório
    E seleciono o Estado "São Paulo"
    E seleciono a Cidade "São Paulo"
    E seleciono a Cidade ""
    Entao visualizo a mensagem O campo cidade é obrigatório
    E limpo o campo endereço
    Entao visualizo a mensagem O campo endereço é obrigatório


