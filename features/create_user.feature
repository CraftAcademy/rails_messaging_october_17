Feature: A user can sign up
  As a user
  In order to sign up
  I need to be able write my email and password and submit it

  Scenario: Person visits the site and presses the Sign Up button
    Given I visit the landing page
    And I press the "Sign up" button
    Then I should be on the "sign_up" page
    When I fill in the "Name" with "Logan"
    And I fill in the "Email" with "logan@random.com"
    And I fill in the "Password" with my "password"
    And I fill in the "Password confirmation" with my "password"
    And I press the "Create" button
    Then I should be on the welcome page
    Then show me the page
    And I should see "Welcome! You have signed up successfully."
