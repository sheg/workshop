class LoginPage
  include PageObject

  page_url "http://mcqe.buddymedia.com"

  text_field(:email, :id => 'email')
  text_field(:password, :id => 'password')
  button(:submit, :id => 'login_submit')

  def submit_login_credentials(username, pass)
    self.email = username
    self.password = pass
    submit
  end
end