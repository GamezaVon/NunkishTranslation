class History
  def initialize(*cred)
    @username, @password, @database = cred[0].values_at(:username, :password, :database)
    p @username, @password, @database
  end

  def record()
    wait = Selenium::WebDriver::Wait.new(:timeout => 90) # seconds
    begin
      options = {args: ['start-maximized']} 
      caps = Selenium::WebDriver::Chrome::Options.new(options: options)
      driver = Selenium::WebDriver.for(:chrome, options: caps)
      driver.get('https://iot.didcom.mx/Account/Login?ReturnUrl=%2f')
      wait.until {driver.find_element(:name, 'UserName')}
      driver.find_element(:name, 'UserName').send_keys(@username.to_s)
      driver.find_element(:name, 'Password').send_keys(@password)
      driver.find_element(:name, 'DataBase').send_keys(@database)
      driver.find_element(:id, 'btnLogin').click()

      menu = wait.until { driver.find_element(:link, 'Estatus Dispositivos') }
      menu.click()
      driver.switch_to.frame 'loaderFrame'
      elemento = wait.until {driver.find_element(:id, 'exportBtn')}
      driver.action.click(elemento).perform
      # elemento.click()
      driver.find_element(:id, 'exportBtn').click()
      driver.find_element(:id, 'downloadPdf').click()
      driver.save_screenshot("C:/Users/Daniel_Gamez/Pictures/EstatusDispositivos_#{Time.now.strftime('%Y-%m-%d_%H.%M.%S')}.png") 
    end
    # menu = Selenium::WebDriver::Wait.until {driver.find_element(:link, 'Estatus Dispositivos')}
    # driver.find_element(:link, 'Estatus Dispositivos').click()
  end
end