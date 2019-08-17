Dado("escolho Editar na area Endereco") do
  @EditEnd = EditarEndereco.new
  @EditEnd.editar_endereco_button
end

Quando("seleciono o Pais {string}") do |paisEnd|
  sleep (3)
  @EditEnd = EditarEndereco.new
  @EditEnd.pais_end_selectbox(paisEnd)  
end

Quando("digito o CEP {string}") do |cep|
  @EditEnd = EditarEndereco.new
  @EditEnd.cep_end_txt(cep)
end

Quando("seleciono o Estado {string}") do |estadoEnd|
  @EditEnd = EditarEndereco.new
  @EditEnd.estado_end_selectbox(estadoEnd)
end

Quando("seleciono a Cidade {string}") do |cidadeEnd|
  @EditEnd = EditarEndereco.new
  @EditEnd.cidade_end_selectbox(cidadeEnd)
end


Quando("preencho o campo Bairro {string}") do |bairro|
  @EditEnd = EditarEndereco.new
  @EditEnd.bairro_end_txt(bairro)
end

Quando("preencho o campo Endereco {string}") do |endereco|
  @EditEnd = EditarEndereco.new
  @EditEnd.endereco_end_txt(endereco)
end

Quando("escolho Salvar endereco") do
  @EditEnd = EditarEndereco.new
  @EditEnd.salvar_end_button
end

Entao ("devo ver uma mensagem de erro {string}") do |erroBairro|
  @EditEnd = EditarEndereco.new
  if @EditEnd.msg_error_bairro.displayed?
      expect(@EditEnd.msg_error_bairro.text).to eql erroBairro
  else
      fail 'foo'
  end
  end


  Entao ("devo ver um alerta de sucesso") do
    @EditEnd = EditarEndereco.new
    if @EditEnd.msg_error_bairro.displayed?
        expect(@EditEnd.msg_error_bairro.text).to eql alerta
    else
        fail 'foo'
    end
    end


