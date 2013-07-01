Given(/^I am on the login page$/) do
  visit(LoginPage)
end

When(/^I submit the login form using "([^"]*)" as my username and "([^"]*)" as my password$/) do |username, password|
  on(LoginPage).submit_login_credentials username, password
end

Then(/^I should be on the dashboard page$/) do
  on(Dashboard).open_menu?.should be_true
end

# on(LoginPage).

When(/^I submit the login form successfully$/) do
  on(LoginPage).submit_login_credentials
end

When(/^I submit login form using "([^"]*)"$/) do |username|
  on(LoginPage).submit_login_credentials(username)

end

Then(/^I should get the following error message in the login page "(.*?)"$/) do |errorMessage|
  on(LoginPage).error.should include(errorMessage)
end