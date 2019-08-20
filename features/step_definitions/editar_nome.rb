Dado("clico em editar na area nome") do
    sleep(1)
    @editarNome = EditarNome.new
    @editarNome.editar_nome_button
end

Quando("preencho o campo nome {string}") do |nome|
    @editarNome = EditarNome.new
    @editarNome.preencher_nome_random(nome)
end

Quando("limpo o campo nome") do
  @editarNome = EditarNome.new
  @editarNome.limpa_nome
end


Quando("preencho e confirmo o campo nome {string}") do |nome|
  @editarNome = EditarNome.new
  @editarNome.preencher_nome(nome)
end
  
  Quando("clico no botao salvar") do
    @editarNome = EditarNome.new
    @editarNome.salvar_button
  end
  
  Entao("vejo {string} no campo nome") do |nome|
    @editarNome = EditarNome.new
    @editarNome.nome_candidato
    expect(@editarNome.nome_candidato).to eql nome
  end

Quando ("valido a mensagem: Dados salvos com sucesso no campo Nome") do
  @editarNome = EditarNome.new
  @editarNome.dados_nome_salvos_sucesso
  end


  Quando ("valido a mensagem O campo nome é obrigatório") do
    @editarNome = EditarNome.new
    @editarNome.nome_invalido
end



