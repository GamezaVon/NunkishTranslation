class Translation
    def initialize() 
      @message = message
    end
    def translate
      agent = Mechanize.new
      page = agent.get('https://iot.didcom.mx/')
      login_form = page.form
      login_form.UserName = "electronica@didcom.com.mx"
      login_form.Password = "Taller16"
      login_form.DataBase = "mantelematics"
      login_form.submit
      
    end
  end