@wip
Feature: Login Feature
  As any user
  I would like to go through an authentication process
  So that I can securely access the application

Background:
  Given I am on the login page

@positive
Scenario: Login successfully
  #Given I am on the login page
#  When I submit the login form using "sfdcmcqe@gmail.com" as my username and "SFDC155!" as my password
  When I submit the login form successfully
  Then I should be on the dashboard page

@negative
Scenario: Login with invalid credentials
#  Given I am on the login page
  When I submit login form using "mansi@gmail.com"
  Then I should get the following error message in the login page "Login Failed"