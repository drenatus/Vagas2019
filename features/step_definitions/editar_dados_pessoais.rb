

Dado("clico Editar na area Dados pessoais") do
    @DadosPessoais = EditarDadosPessoais.new
    @DadosPessoais.editdadosPessoais
end



Quando("clico {string} no campo Estado civil") do |estCivil|
    @DadosPessoais = EditarDadosPessoais.new
    @DadosPessoais.estado_civil(estCivil)
    
end
  
  Quando("e clico no botão salvar") do
    @DadosPessoais = EditarDadosPessoais.new
    @DadosPessoais.salvar_dados_pessoais
  end
  

  Quando("preencho a data de nascimento {string}") do |dataNasc|
    @DadosPessoais = EditarDadosPessoais.new
    @DadosPessoais.preencher_data(dataNasc)
  end



    Quando("escolho {string} em genero") do |genero|
        @DadosPessoais = EditarDadosPessoais.new
        @DadosPessoais.genero_radio (genero)
    end

    Quando ("deixo o campo Estado civil vazio {string}") do |estCivil|
        @DadosPessoais = EditarDadosPessoais.new
        @DadosPessoais.estado_civil(estCivil)
    end

    Quando("seleciono {string} na opcao Possui filhos") do |filhos|
        @DadosPessoais = EditarDadosPessoais.new
        @DadosPessoais.filho_nao(filhos)
    end


    Quando ("seleciono {string} na opcao Pais de nacionalidade") do |paisNasc|
        @DadosPessoais = EditarDadosPessoais.new
        @DadosPessoais.pais_nasc(paisNasc)
    end

    Quando ("escolho {string} na opcao Documento Pais") do |paisdoc|
        @DadosPessoais = EditarDadosPessoais.new
        @DadosPessoais.pais_doc_selectbox(paisdoc)
    end
    
    Quando ("seleciono tipo do documento {string}") do |tpDoc|
        @DadosPessoais = EditarDadosPessoais.new
        @DadosPessoais.tipodoc(tpDoc)
    end


    Quando("preencho o numero do documento {string}")do |numdoc|
        @DadosPessoais = EditarDadosPessoais.new
        @DadosPessoais.numdocumento(numdoc)
    end

Quando("limpo o campo Número de documento")do
  @DadosPessoais = EditarDadosPessoais.new
  @DadosPessoais.delnumdocumento
end



Entao("valido a mensagem: Dados salvos com sucesso no bloco Dados Pessoais") do
  @DadosPessoais = EditarDadosPessoais.new
  @DadosPessoais.dados_salvos_sucesso

end

Entao("vejo a mensagem Data de nascimento precisa ter o seguinte formato") do
  @DadosPessoais = EditarDadosPessoais.new
  @DadosPessoais.erro_data_nascimento

end

Entao("vejo a mensagem O campo número é obrigatório") do
  @DadosPessoais = EditarDadosPessoais.new
  @DadosPessoais.erro_documento

end



