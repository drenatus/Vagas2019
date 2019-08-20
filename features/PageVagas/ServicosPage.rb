 class Servicos < Setup

def atualizarCV
    return $driver.find_element(:class, 'edit-link-cv').click
end

   end
