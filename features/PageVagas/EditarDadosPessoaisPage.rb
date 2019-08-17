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
        sleep (3)
        case genero
        when "Feminino"
            $driver.find_element(:id,'dados_pessoais_genero_feminino').click
        when "Masculino"
            $driver.find_element(:id,'dados_pessoais_genero_masculino').click
        else
          fail 'foo'
        end       
    end

    def filho_nao (filho)
        sleep (3)
        case filho
        when "Sim"
            $driver.find_element(:id,'filhos_sim').click            
        when "Não"
            $driver.find_element(:id,'filhos_nao').click
        else
          fail 'foo'
        end   

    end

    def estado_civil(estCivil)
        sleep (4)
        dropdown = $driver.find_element(id: 'dados_pessoais_estado_civil')
        select_list = Selenium::WebDriver::Support::Select.new(dropdown)
        select_list.select_by(:text, estCivil)
    end

    def salvar_dados_pessoais
        $driver.find_element(:xpath,'//*[@id="personalData"]/div[2]/form/div[2]/button').click
        sleep(2)
    end

    def dados_salvos_sucesso
        sleep (1)
        (@driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Documento:'])[1]/following::div[2]").text).should == "Dados salvos com sucesso."
    end


    def numero_filhos (numFilhos)
        sleep (3)
        @numFiilhos = $driver.find_element(:id,'dados_pessoais_filhos')
        @numFiilhos.clear
        @numFiilhos.send_keys(numFilhos)
    end

    def pais_nasc(paisNasc)
        sleep (3)
        dropdown = $driver.find_element(id: 'dados_pessoais_pais_de_nacionalidade')
        select_list = Selenium::WebDriver::Support::Select.new(dropdown)
        select_list.select_by(:text, paisNasc)
    end

    def pais_doc_selectbox(paisDoc)
        sleep (3)
        dropdown = $driver.find_element(id: 'dados_pessoais_documentos_attributes_0_pais_id')
        select_list = Selenium::WebDriver::Support::Select.new(dropdown)
        select_list.select_by(:text, paisDoc)
    end
    
    def tipodoc(tpDoc)
        sleep (5)
        dropdown = $driver.find_element(xpath: '//*[@id="personalData"]/div[2]/form/div[1]/div[6]/div/div/div/div[2]/select')
        select_list = Selenium::WebDriver::Support::Select.new(dropdown)
        select_list.select_by(:text, tpDoc)
    end

    def numdocumento (numdoc)
        sleep (3)
        @numDoc = $driver.find_element(:xpath,'//*[@id="personalData"]/div[2]/form/div[1]/div[6]/div/div/div/div[3]/input')
        @numDoc.clear
        @numDoc.send_keys(numdoc)
    end



end