
    class EditarNome<Setup

    def editar_nome_button
        return $driver.find_element(:css, ".link--edit").click
        sleep(2000)
    end

    def preencher_nome(nome)
        sleep (3)
        @randomnumber = rand 0..100
        @campoNome = $driver.find_element(:name, "nome.feature")
        @campoNome.clear
        @campoNome.send_keys(nome , @randomnumber)
    end

    def salvar_button
        $driver.find_element(:css,'button.btn').click
        #a = $driver.switch_to.alert
    end

    def nome_candidato
        sleep (1)
        return $driver.find_element(:xpath,'//*[@id="name"]/div[1]/h3').text
    end

    def alert_msg
        sleep (5)
        return $driver.find_element(:css,'.validate-error')               
    end

end
