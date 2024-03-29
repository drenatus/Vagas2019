require 'capybara'
require 'selenium-webdriver'
require 'rspec'

class EditarInfoContato<Setup



    def editar_contatos

      $driver.execute_script('arguments[0].scrollIntoView();', $driver.find_element(:id,'address' ))
      sleep(2)
      $driver.find_element(:xpath,'//*[@id="contactInformation"]/div[1]/a').click

    end

    def preencher_email(email)
        sleep (1)
        # @randomnumber = rand 9
        @email = $driver.find_element(:id, 'informacoes_de_contato_email')
        @email.clear
        @email.send_keys(email)
    end

    def preencher_conf_email(confEmail)
        sleep (1)
        @emailConf = $driver.find_element(:id, 'informacoes_de_contato_confirmacao_de_email')
        @emailConf.clear
        # emailconfvalue = $driver.find_element(:id, 'informacoes_de_contato_confirmacao_de_email').text
        @emailConf.send_keys(confEmail)
    end

    def preencher_telefone(tel)
        sleep (1)
        @randomnumber = rand 0..9
        @Telefone = $driver.find_element(:id, 'informacoes_de_contato_telefone_numero')
        @Telefone.clear
        @Telefone.send_keys(tel,@randomnumber)
    end

    def limpa_telefone
        sleep (1)
        $driver.find_element(:id, 'informacoes_de_contato_telefone_numero').clear
     end


    def limpa_celular
        sleep (1)
        $driver.find_element(:id, 'informacoes_de_contato_celular_numero').clear
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
    end

    def salvar_contato

        $driver.execute_script('arguments[0].scrollIntoView();', $driver.find_element(:id,'contactInformation' ))
        sleep (2)
        $driver.find_element(:xpath,'//*[@id="contactInformation"]/div[2]/form/div[2]/button').click
        sleep(1)
    end

    def dados_salvos_sucesso_contatos

        @sucesso = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Celular:'])[1]/following::div[2]")
       (@sucesso.text).should == "Dados salvos com sucesso."
    end

    def email_invalido
        sleep (1)
        @emailinvalido = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='E-mail'])[1]/following::p[1]")
        (@emailinvalido.text).should == "Insira um e-mail válido"
    end

    def conf_email_invalido

        @confemailinvalido = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Confirmação e-mail'])[1]/following::p[1]")
        (@confemailinvalido.text).should == "E-mail e confirmação e-mail não confere"
    end

    def tel_obrigatorio

        @telobrigatorio = $driver.find_element(:xpath,  "(.//*[normalize-space(text()) and normalize-space(.)='Telefone'])[1]/following::p[1]")
        (@telobrigatorio.text).should == "O campo telefone é obrigatório"
    end

    def dddcel_obrigatorio

        @dddcelobrigatorio = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='(Opcional)'])[1]/following::p[1]")
       (@dddcelobrigatorio.text).should == "O campo ddd é obrigatório"
    end


    def cel_obrigatorio

        @celobrigatorio = $driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='(Opcional)'])[1]/following::p[2]")
       (@celobrigatorio.text).should == "O campo Telefone Celular é obrigatório"
    end




    end
