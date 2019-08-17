class EditarEndereco<Setup

    def editar_endereco_button
        return $driver.find_element(:css, '#cv-endereco.feature > a:nth-child(2)').click
    end

    def pais_end_selectbox(paisEnd)
        sleep (3)
        dropdown = $driver.find_element(id: 'endereco_pais_id')
        select_list = Selenium::WebDriver::Support::Select.new(dropdown)
        select_list.select_by(:text, paisEnd)
    end

    def cep_end_txt(cep)
        sleep (3)
        @campoCEP = $driver.find_element(:id, 'endereco_cep')
        @campoCEP.clear
        @campoCEP.send_keys(cep)
    end

    def estado_end_selectbox(estadoEnd)
        sleep (3)
        dropdown = $driver.find_element(id: 'endereco_uf_id')
        select_list = Selenium::WebDriver::Support::Select.new(dropdown)
        select_list.select_by(:text, estadoEnd)
    end

    def cidade_end_selectbox(cidadeEnd)
        sleep (3)
        dropdown = $driver.find_element(id: 'endereco_cidade_id')
        select_list = Selenium::WebDriver::Support::Select.new(dropdown)
        select_list.select_by(:text, cidadeEnd)
    end

    def bairro_end_txt(bairro)
        sleep (3)
        @campoCEP = $driver.find_element(:id, 'endereco_bairro')
        @campoCEP.clear
        @campoCEP.send_keys(bairro)
    end

    def endereco_end_txt(endereco)
        sleep (3)
        @campoCEP = $driver.find_element(:id, 'endereco_logradouro')
        @campoCEP.clear
        @campoCEP.send_keys(endereco)
    end

    def salvar_end_button
        return $driver.find_element(:css, '#edit_endereco_ > div:nth-child(3) > button:nth-child(2)').click
    end
end


def msg_error_bairro
    sleep (5)
    return $driver.find_element(:css,'.endereco_bairro > div:nth-child(2) > p:nth-child(2)')                  
end

def msg_error_end
    sleep (5)
    return $driver.find_element(:css,'div.control-group:nth-child(6) > div:nth-child(2) > p:nth-child(2)')               
end

