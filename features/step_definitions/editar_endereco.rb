Dado("clico em editar endereco") do
  @EditEnd = EditarEndereco.new
  @EditEnd.editar_endereco
end

Quando("seleciono o Pais {string}") do |paisEnd|
  sleep (3)
  @EditEnd = EditarEndereco.new
  @EditEnd.pais_end(paisEnd)
end

Quando("digito o CEP {string}") do |cep|
  @EditEnd = EditarEndereco.new
  @EditEnd.cep_end(cep)
end

Quando("seleciono o Estado {string}") do |estadoEnd|
  @EditEnd = EditarEndereco.new
  @EditEnd.estado_end(estadoEnd)
end

Quando("seleciono a Cidade {string}") do |cidadeEnd|
  @EditEnd = EditarEndereco.new
  @EditEnd.cidade_end(cidadeEnd)
end


Quando("preencho o campo Bairro {string}") do |bairro|

  @EditEnd = EditarEndereco.new
  @EditEnd.bairro_end(bairro)
end

Quando("preencho o campo Endereco {string}") do |endereco|
  @EditEnd = EditarEndereco.new
  @EditEnd.endereco_end(endereco)
end

Quando("clico em Salvar endereco") do
  @EditEnd = EditarEndereco.new
  @EditEnd.salvar_end
end

Quando("valido a mensagem: Dados salvos com sucesso no bloco Endereço") do
  @EditEnd = EditarEndereco.new
  @EditEnd.dados_salvos_sucesso_end
end

