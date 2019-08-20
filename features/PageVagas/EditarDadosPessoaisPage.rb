class EditarDadosPessoais<Setup



    def editdadosPessoais
        return $driver.find_element(:xpath, '//*[@id="personalData"]/div[1]/a').click
    end

    def preencher_data(data)
        sleep (3)
        @campoNome = $driver.find_element(:id, 'dados_pessoais_data_de_nascimento')
        @campoNome.clear
        @campoNome.send_keys(data)
    end

    def genero_radio (genero)
        sleep (1)
        if genero == "Feminino"

            $driver.find_element(:id,'dados_pessoais_genero_feminino').click
        else
            $driver.find_element(:id,'dados_pessoais_genero_masculino').click
        end

     end


    def filho_nao (filho)
        sleep (1)
        if filho == "Sim"
        $driver.find_element(:id,'filhos_sim').click
        else
        $driver.find_element(:id,'filhos_nao').click

        end

    end

    def estado_civil(estCivil)
        sleep (1)
        campoestcivil = $driver.find_element(id: 'dados_pessoais_estado_civil')
        ec_list = Selenium::WebDriver::Support::Select.new(campoestcivil)
        ec_list.select_by(:text, estCivil)
    end


    def numero_filhos (numFilhos)
        sleep (1)
        @numFiilhos = $driver.find_element(:id,'dados_pessoais_filhos')
        @numFiilhos.clear
        @numFiilhos.send_keys(numFilhos)
    end

    def pais_nasc(paisNasc)
        sleep (1)
        paisnacionalidade = $driver.find_element(id: 'dados_pessoais_pais_de_nacionalidade')
        nac_list = Selenium::WebDriver::Support::Select.new(paisnacionalidade)
        nac_list.select_by(:text, paisNasc)
    end

    def pais_doc_selectbox(paisDoc)
        sleep (1)
        documentopais = $driver.find_element(id: 'dados_pessoais_documentos_attributes_0_pais_id')
        doc_list = Selenium::WebDriver::Support::Select.new(documentopais)
        doc_list.select_by(:text, paisDoc)
    end
    
    def tipodoc(tpDoc)
        sleep (1)
        tipodoc = $driver.find_element(xpath: '//*[@id="personalData"]/div[2]/form/div[1]/div[6]/div/div/div/div[2]/select')
        tipodoc_list = Selenium::WebDriver::Support::Select.new(tipodoc)
        tipodoc_list.select_by(:text, tpDoc)
    end

    def numdocumento (numdoc)
        sleep (1)
        @randomnumber = rand 0..10
        @numDoc = $driver.find_element(:xpath,'//*[@id="personalData"]/div[2]/form/div[1]/div[6]/div/div/div/div[3]/input')
        @numDoc.clear
        @numDoc.send_keys(numdoc,@randomnumber)
    end


    def delnumdocumento
        sleep (1)
        $driver.find_element(:xpath,'//*[@id="personalData"]/div[2]/form/div[1]/div[6]/div/div/div/div[3]/input').clear
    end

    def salvar_dados_pessoais
        sleep (1)
        $driver.find_element(:xpath,'//*[@id="personalData"]/div[2]/form/div[2]/button').click

    end


    def dados_salvos_sucesso
        sleep (1)
        @msgsucesso = $driver.find_element(xpath: "(.//*[normalize-space(text()) and normalize-space(.)='Documento:'])[1]/following::div[2]")
        (@msgsucesso.text).should == "Dados salvos com sucesso."
    end

    def erro_data_nascimento
        sleep (1)
        @msgerrodatanasc = $driver.find_element(xpath: '//*[@id="personalData"]/div[2]/form/div[1]/div[1]/div/p')
        (@msgerrodatanasc.text).should == "Data de nascimento precisa ter o seguinte formato: dd/mm/aaaa"
    end

    def erro_documento
        sleep (2)
        @msgerrodoc = $driver.find_element(xpath: "(.//*[normalize-space(text()) and normalize-space(.)='Documento'])[1]/following::p[1]")
        (@msgerrodoc.text).should == "O campo número é obrigatório"
    end


end