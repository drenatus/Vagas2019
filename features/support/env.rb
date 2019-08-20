require 'selenium-webdriver'
require 'cucumber'
require 'watir'
require 'capybara'


After do
    $driver.quit
end
