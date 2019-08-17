require 'selenium-webdriver'

class Home < Setup
    def suaPaginaLink
        return $driver.find_element(:css,'#menuTopo > a:nth-child(1) > span:nth-child(1)').click
    end
end
    