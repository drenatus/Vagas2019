require 'selenium-webdriver'
require 'cucumber'


After do
    $driver.quit
end
