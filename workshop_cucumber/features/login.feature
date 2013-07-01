Feature: Login Feature
  As any user
  I would like to go through an authentication process
  So that I can securely access the application

Scenario: Login successfully
  Given I am on the login page
  When I submit the login form using "sfdcmcqe@gmail.com" as my username and "SFDC155!" as my password
  Then I should be on the dashboard page