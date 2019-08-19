class EditarEndereco<Setup

    def editar_endereco
        return $driver.find_element(:xpath, '//*[@id="address"]/div[1]/a').click
    end


    def pais_end(paisEnd)
        sleep (1)
        dropdown = $driver.find_element(id: 'endereco_pais_id')
        select_list = Selenium::WebDriver::Support::Select.new(dropdown)
        select_list.select_by(:text, paisEnd)
    end

    def cep_end(cep)
        sleep (3)
        @campoCEP = $driver.find_element(:id, 'endereco_codigo_postal')
        @campoCEP.clear
        @campoCEP.send_keys(cep)
    end

    def estado_end(estadoEnd)
        sleep (3)
        dropdown = $driver.find_element(id: 'endereco_uf_id')
        select_list = Selenium::WebDriver::Support::Select.new(dropdown)
        select_list.select_by(:text, estadoEnd)
    end

    def cidade_end(cidadeEnd)
        sleep (1)
        dropdown = $driver.find_element(id: 'endereco_cidade_id')
        select_list = Selenium::WebDriver::Support::Select.new(dropdown)
        select_list.select_by(:text, cidadeEnd)
    end

    def bairro_end(bairro)
        sleep (3)
        @randomnumber = rand 0..10
        @campoCEP = $driver.find_element(:id, 'endereco_bairro')
        @campoCEP.clear
        @campoCEP.send_keys(bairro, @randomnumber)
    end

    def endereco_end(endereco)
        sleep (1)
        @randomnumber = rand 0..10
        @campoCEP = $driver.find_element(:id, 'endereco_logradouro')
        @campoCEP.clear
        @campoCEP.send_keys(endereco, @randomnumber)

    end

    def salvar_end
        # $driver.find_element(:xpath, '//*[@id="address"]/div[2]/form/div[2]/button').click
        @campoCEP = $driver.find_element(:id, 'endereco_logradouro').send_keys :enter
        sleep(2)
    end

    def dados_salvos_sucesso_end
        @sucesso = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Endereço:'])[1]/following::div[2]")
        (@sucesso.text).should == "Dados salvos com sucesso."
    end

end



