Feature: Guest user comes to home page and registers

  Scenario: Guest user come to home page and try to login
    Given I am a guest user
    When I come to home page
    Then I should be redirected to login page
      And I fill login form with invalid data
    Then I should see warning message with text "Invalid email or password."

  Scenario: Guest user goes to the signup page and try to signup
    Given I am a guest user
    When I am on the login page
      And I click "Sign up" link
    Then I should see a signup form
    When I fill form with correct data
      And I click "Submit" button
    Then I should be on the home page
      And I should be logged in as "Jone Dou"