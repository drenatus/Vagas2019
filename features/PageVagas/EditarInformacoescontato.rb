class EditarInfoContato<Setup

    def preencher_email(email)
        sleep (3)
        @email = $driver.find_element(:id, 'informacoes_de_contato_email')
        @email.clear
        @email.send_keys(email)
    end

    def preencher_conf_email(confEmail)
        sleep (3)
        @emailConf = $driver.find_element(:id, 'informacoes_de_contato_confirmacao_de_email')
        @emailConf.clear
        @emailConf.send_keys(confEmail)
    end

    def preencher_telefone(tel)
        sleep (3)
        @Telefone = $driver.find_element(:id, 'informacoes_de_contato_telefone_numero')
        @Telefone.clear
        @Telefone.send_keys(tel)
    end

    def tel_cel_pais(paisTel)
        sleep (4)
        dropdown = $driver.find_element(id: 'informacoes_de_contato_celular_pais_id')
        select_list = Selenium::WebDriver::Support::Select.new(dropdown)
        select_list.select_by(:text, paisTel)
    end

    def preencher_ddd(ddd)
        sleep (3)
        @email = $driver.find_element(:id, 'informacoes_de_contato_celular_ddd')
        @email.clear
        @email.send_keys(ddd)
    end
    
    def num_cel(numCel)
        sleep (3)
        @email = $driver.find_element(:id, 'informacoes_de_contato_celular_numeronformacoes_de_contato_celular_ddd')
        @email.clear
        @email.send_keys(numCel)
    end

    def salvar_button_info_contato
        $driver.find_element(:css,'#edit_informacoes_de_contato_ > div:nth-child(3) > button:nth-child(2)').click        
    end

    def editar_info_contatos
        $driver.find_element(:css,'#informacoes-de-contato > a:nth-child(2)').click
    end
    

    










    def alert_email_vazio
        sleep (5)
        return $driver.find_element(:css,'div.email:nth-child(1) > div:nth-child(2) > p:nth-child(2)')               
    end

    def alert_email_invalido
        sleep (5)
        return $driver.find_element(:css,'div.email:nth-child(1) > div:nth-child(2) > p:nth-child(2)')               
    end                                    

end