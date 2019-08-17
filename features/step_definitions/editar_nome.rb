Dado("clico em editar na area nome") do
    @editarNome = EditarNome.new
    @editarNome.editar_nome_button
end

Quando("preencho o campo nome {string}") do |nome|
    @editarNome = EditarNome.new
    @editarNome.preencher_nome(nome)
end
  
  Quando("clico no botao salvar") do
    @editarNome = EditarNome.new
    @editarNome.salvar_button
  end
  
  Entao("vejo a mensagem {string} salvo com sucesso") do |nome|
    @editarNome = EditarNome.new
    @editarNome.nome_candidato
    expect(@editarNome.nome_candidato).to eql nome
  end



