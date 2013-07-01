class LoginPage
  include PageObject


  page_url FigNewton.base_url

  text_field(:email, :id => 'email')
  text_field(:password, :id => 'password')
  button(:submit, :id => 'login_submit')
  list_item(:error,:class => "error" )

  def submit_login_credentials(username=FigNewton.default_user.username, pass=FigNewton.default_user.password)
    self.email = username
    self.password = pass
    submit
  end



end