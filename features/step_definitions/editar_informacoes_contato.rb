Dado("clico Editar na area de informacoes de contato") do
    @InfoContato = EditarInfoContato.new
    @InfoContato.editar_info_contatos
  end
  
  Quando("preencho campo email {string}") do |email|
    @InfoContato = EditarInfoContato.new
    @InfoContato.preencher_email(email)
  end
  
  Quando("preencho o campo Confirmacao de email {string}") do |confEmail|
    @InfoContato = EditarInfoContato.new
    @InfoContato.preencher_conf_email(confEmail)
  end

  Quando ("escolho Salvar informacoes")do
    @InfoContato = EditarInfoContato.new
    @InfoContato.salvar_button_info_contato
  end

  Entao("vejo um alerta de erro {string}") do |msgErro|
    @InfoContato = EditarInfoContato.new
    if @InfoContato.alert_email_vazio.displayed?
        expect(@InfoContato.alert_email_vazio.text).to eql msgErro
    else
        fail 'foo'
    end
  end


  Entao("vejo um alerta de erro no campo email {string}") do |msgErro|
    @InfoContato = EditarInfoContato.new
    if @InfoContato.alert_email_invalido.displayed?
        expect(@InfoContato.alert_email_invalido.text).to eql msgErro
    else
        fail 'foo'
    end
  end


  