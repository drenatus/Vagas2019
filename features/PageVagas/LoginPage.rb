

class Login < Setup

  def openSite (url)
    $driver=Selenium::WebDriver.for :firefox
    #$driver.manage.window.Cookies.deleteallcookies
    $driver.manage.window.maximize
    $driver.navigate.to url
  end

  def user_name (username)
    return $driver.find_element(:id,'login_candidatos_form_usuario').send_keys(username)
    
  end

  def password (password)
    return $driver.find_element(:id,'login_candidatos_form_senha').send_keys(password)
  end

  def login_button
    return $driver.find_element(:name,'commit').click
    sleep(3)
  end






end
