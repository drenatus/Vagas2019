
Dado("que abro o browser e efetuo o login") do
    @browser = Login.new
    @browser.openSite("http://vagas.com.br/login-candidatos")
    @browser.user_name('drenatus')
    @browser.password('304050')
    @browser.login_button

end
  
 Dado("clico em atualizar curriculo") do
   @home = Home.new
   @servicos = Servicos.new
   @servicos.atualizarCV

end
