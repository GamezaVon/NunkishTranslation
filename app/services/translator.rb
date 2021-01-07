class History
    def initialize()
      @message = 'Ohayo'
    end

    def record()
      # require 'selenium-webdriver'
      options = {args: ['start-maximized']} 
      caps = Selenium::WebDriver::Chrome::Options.new(options: options)
      driver = Selenium::WebDriver.for(:chrome, options: caps)
      driver.get('https://iot.didcom.mx/Account/Login?ReturnUrl=%2f')
      driver.find_element(:name, 'UserName').send_keys('electronica@didcom.com.mx')
      driver.find_element(:name, 'Password').send_keys('Taller16')
      driver.find_element(:name, 'DataBase').send_keys('mantelematics')
      driver.find_element(:id, 'btnLogin').click()

      wait = Selenium::WebDriver::Wait.new(:timeout => 30) # seconds
      begin
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