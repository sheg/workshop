require 'selenium-webdriver'

class LoginPage
  
  def initialize(browser)
    @browser = browser
    @email_text_field = @browser.find_element(:id => 'email')
    @password_text_field = @browser.find_element(:id => 'password')
    @submit_button = @browser.find_element(:id => 'login_submit')
  end

  def submit_login_credentials(user,pass)
    @email_text_field.send_keys(user)
    @password_text_field.send_keys(pass)
    @submit_button.click
  end
end


