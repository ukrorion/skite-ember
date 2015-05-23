Feature: Guest user comes to home page and registers

  Scenario: Guest user come to home page and try to login
    Given I am a guest user
    When I come to home page
    Then I should be redirected to login page
      And I fill login form with invalid data
    Then I should see warning message with text "Incorect login or password"
