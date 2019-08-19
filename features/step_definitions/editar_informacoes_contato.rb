

Dado("clico Editar na area de informacoes de contato") do
    @InfoContato = EditarInfoContato.new
    @InfoContato.editar_contatos
  end
  
  Quando("preencho campo email {string}") do |email|
    @InfoContato = EditarInfoContato.new
    @InfoContato.preencher_email(email)
  end
  
  Quando("preencho o campo Confirmacao de email {string}") do |confEmail|
    @InfoContato = EditarInfoContato.new
    @InfoContato.preencher_conf_email(confEmail)
  end

Quando("preencho o campo telefone {string}") do |tel|
  @InfoContato = EditarInfoContato.new
  @InfoContato.preencher_telefone(tel)
end

Quando("preencho o campo ddd do celular {string}") do |dddcel|
  @InfoContato = EditarInfoContato.new
  @InfoContato.preencher_dddcel(dddcel)
end


Quando("preencho o campo celular {string}") do |cel|
  @InfoContato = EditarInfoContato.new
  @InfoContato.preencher_num_cel(cel)
end

  Quando ("escolho Salvar informacoes de contatos")do
    @InfoContato = EditarInfoContato.new
    @InfoContato.salvar_contato
  end




Entao ("valido a mensagem: Dados salvos com sucesso no bloco Contatos")do
  @InfoContato = EditarInfoContato.new
  @InfoContato.dados_salvos_sucesso_contatos
end



  