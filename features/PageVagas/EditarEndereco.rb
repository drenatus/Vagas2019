class EditarEndereco<Setup

    def editar_endereco
        return $driver.find_element(:xpath, '//*[@id="address"]/div[1]/a').click
    end


    def pais_end(paisEnd)
        sleep (1)
        pais = $driver.find_element(id: 'endereco_pais_id')
        pais_list = Selenium::WebDriver::Support::Select.new(pais)
        pais_list.select_by(:text, paisEnd)
    end

    def cep_end(cep)
        sleep (3)
        @campoCEP = $driver.find_element(:id, 'endereco_codigo_postal')
        @campoCEP.clear
        @campoCEP.send_keys(cep)
    end

    def estado_end(estadoEnd)
        sleep (3)
        uf = $driver.find_element(id: 'endereco_uf_id')
        uf_list = Selenium::WebDriver::Support::Select.new(uf)
        uf_list.select_by(:text, estadoEnd)
    end

    def cidade_end(cidadeEnd)
        sleep (1)
        cidade = $driver.find_element(id: 'endereco_cidade_id')
        cid_list = Selenium::WebDriver::Support::Select.new(cidade)
        cid_list.select_by(:text, cidadeEnd)
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
        @endereco = $driver.find_element(:id, 'endereco_logradouro')
        @endereco.clear
        @endereco.send_keys(endereco, @randomnumber)

    end

    def limpa_end
        sleep (1)
       $driver.find_element(:id, 'endereco_logradouro').clear
    end

    def limpa_cep
        sleep (1)
        $driver.find_element(:id, 'endereco_codigo_postal').clear
    end


    def salvar_end
       $driver.execute_script('arguments[0].scrollIntoView();', $driver.find_element(:id,'address' ))
       $driver.find_element(:xpath, '//*[@id="address"]/div[2]/form/div[2]/button').click
    end

    def dados_salvos_sucesso_end
        sleep(2)
        @sucesso = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Endereço:'])[1]/following::div[2]")
        (@sucesso.text).should == "Dados salvos com sucesso."
    end

    def mensagem_erro_pais
        @sucesso = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='País'])[1]/following::p[1]")
        (@sucesso.text).should == "O campo país é obrigatório"
    end


    def mensagem_erro_cep
        sleep(1)
        @sucesso = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Esqueci meu CEP'])[1]/following::p[1]")
        (@sucesso.text).should == "O campo cep é obrigatório"
    end

    def mensagem_erro_estado
        @sucesso = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Estado'])[1]/following::p[1]")
        (@sucesso.text).should == "O campo estado é obrigatório"
    end

    def mensagem_erro_cidade
        @sucesso = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Cidade'])[1]/following::p[1]")
        (@sucesso.text).should == "O campo cidade é obrigatório"
    end

    def mensagem_erro_endereco
        @sucesso = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Endereço'])[1]/following::p[1]")
        (@sucesso.text).should == "O campo endereço é obrigatório"
    end


end



