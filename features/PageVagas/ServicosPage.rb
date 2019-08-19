 class Servicos < Setup

def atualizarCV
    return $driver.find_element(:class, 'edit-link-cv').click
    # $driver.navigate.to("https://www.vagas.com.br/servicos/curriculo")
end

   end
