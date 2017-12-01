Feature: A user can sign up
  As a user
  In order to sign up
  I need to be able write my email and password and submit it

  Scenario: Person visits the site and presses the Sign Up button
    Given I visit the landing page
    And I press the "Sign up" button
    Then I should be on the "sign_up" page
    When I enter the "Name" with "name"
    And I fill in the "Email" with "sophie.sjoberg@gmail.com"
    And I fill in the "Password" with my "olivolja"
    And I enter "Password" confirmation with "password"
    And I press the "Create" button
    Then I should be on the users page
    Then show me the page
    And I should see "Welcome! You have sucessfully signed up"