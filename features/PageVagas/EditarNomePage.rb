
    class EditarNome<Setup



    def editar_nome_button
        return $driver.find_element(:css, ".link--edit").click
        sleep(1)
    end

    def preencher_nome(nome)
        sleep (1)
        @campoNome = $driver.find_element(:xpath, '//*[@id="name"]/div[1]/form/div/div[1]/input')
        @campoNome.clear
        @campoNome.send_keys(nome)
    end

    def preencher_nome_random(nome)
        sleep (1)
        @randomnumber = rand 0..100
        @campoNome = $driver.find_element(:xpath, '//*[@id="name"]/div[1]/form/div/div[1]/input')
        @campoNome.clear
        @campoNome.send_keys(nome, @randomnumber)
    end

    def  limpa_nome
        sleep (1)
        $driver.find_element(:xpath, '//*[@id="name"]/div[1]/form/div/div[1]/input').clear
    end




    def nome_candidato
        sleep (1)
        return $driver.find_element(:xpath,'//*[@id="name"]/div[1]/h3').text
    end

    def salvar_button

        $driver.find_element(:css,'button.btn').click

    end


   def dados_nome_salvos_sucesso
       sleep(1)
       @msgsucessonome = $driver.find_element(xpath: "(.//*[normalize-space(text()) and normalize-space(.)='Diogo Teste'])[1]/following::div[5]")
      (@msgsucessonome.text).should == "Dados salvos com sucesso."

   end

    def nome_invalido
        sleep(1)
        @msgsucessonome = $driver.find_element(xpath: '//*[@id="name"]/div[1]/form/div/div[1]/p')
        (@msgsucessonome.text).should == "O campo nome é obrigatório"

    end




end
