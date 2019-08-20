

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

Quando("limpo o campo telefone") do
  @InfoContato = EditarInfoContato.new
  @InfoContato.limpa_telefone
end

Quando("limpo o campo celular") do
  @InfoContato = EditarInfoContato.new
  @InfoContato.limpa_celular
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


Entao ("visualizo a mensagem Insira um e-mail válido")do
  @InfoContato = EditarInfoContato.new
  @InfoContato.email_invalido
end


Entao ("visualizo a mensagem E-mail e confirmação e-mail não confere")do
  @InfoContato = EditarInfoContato.new
  @InfoContato.conf_email_invalido
end

Entao ("visualizo a mensagem O campo telefone é obrigatório")do
  @InfoContato = EditarInfoContato.new
  @InfoContato.tel_obrigatorio
end


Entao ("visualizo a mensagem O campo ddd é obrigatório")do
  @InfoContato = EditarInfoContato.new
  @InfoContato.dddcel_obrigatorio
end


Entao ("visualizo a mensagem O campo Telefone Celular é obrigatório")do
  @InfoContato = EditarInfoContato.new
  @InfoContato.cel_obrigatorio
end
  