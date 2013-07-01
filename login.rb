require 'selenium-webdriver'
require_relative 'login_page.rb'
require 'rspec'

#1) DRY - Do not repeat yourself
#2) What and not How...

describe "Login Feature" do  
  
  before :each do
    @browser = Selenium::WebDriver.for :chrome
    @browser.navigate.to "http://mcqe.buddymedia.com/login"
    @login_page = LoginPage.new @browser
  end
  
  after :each do
    @browser.quit()
  end

  it "should log in successfully" do
    @login_page.submit_login_credentials("sfdcmcqe@gmail.com", "SFDC155!")
    @browser.find_elements(:class => 'ui-icon-triangle-1-s').length.should > 0
  end

  it "should not log in when using invalid creds" do
    @login_page.submit_login_credentials("sdhgsdgllg", "lsdglksdlgksdg")
    @browser.find_element(:class => 'error').text.should include "Failed"
  end

end
