require 'watir'


class EditarInfoContato<Setup

    def editar_contatos
        $driver.find_element(:xpath,'//*[@id="contactInformation"]/div[1]/a').click
    end

    def preencher_email(email)
        sleep (1)
        @email = $driver.find_element(:id, 'informacoes_de_contato_email')
        @email.clear
        @email.send_keys(email)
    end

    def preencher_conf_email(confEmail)
        sleep (1)
        @emailConf = $driver.find_element(:id, 'informacoes_de_contato_confirmacao_de_email')
        @emailConf.clear
        @emailConf.send_keys(confEmail)
    end

    def preencher_telefone(tel)
        sleep (1)
        @randomnumber = rand 0..9
        @Telefone = $driver.find_element(:id, 'informacoes_de_contato_telefone_numero')
        @Telefone.clear
        @Telefone.send_keys(tel,@randomnumber)
    end

    def preencher_dddcel(dddcel)
        sleep (1)
        @ddd = $driver.find_element(:id, 'informacoes_de_contato_celular_ddd')
        @ddd.clear
        @ddd.send_keys(dddcel)
    end
    
    def preencher_num_cel(numCel)
        sleep (1)
        @randomnumber = rand 0..9
        @cel = $driver.find_element(:id, 'informacoes_de_contato_celular_numero')
        @cel.clear
        @cel.send_keys(numCel, @randomnumber)

        # $driver.find_element(:xpath, "informacoes_de_contato_aceita_receber_sms_de_empresas").send_keys :tab
        $element.scroll.to :bottom


    end

    def salvar_contato
        @salvarcontato = $driver.find_element(:xpath,'//*[@id="contactInformation"]/div[2]/form/div[2]/button')
        # $page.executeScript("$('#{@salvarcontato}').get(0).scrollIntoView();")
         @salvarcontato.click
         sleep(2)
    end

    def dados_salvos_sucesso_contatos
        @sucesso = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Celular:'])[1]/following::div[2]")
        (@sucesso.text).should == "Dados salvos com sucesso."
    end


    

    end
