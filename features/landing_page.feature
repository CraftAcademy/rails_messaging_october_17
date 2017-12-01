Feature: Landing Page
  As a user
  In order to use the site properly
  I need links the point to the right pages on the landing page

  Scenario: Person visits the site
    Given I visit the landing page
    Then I should see "Craft Academy Mailboxer"

  Scenario: Person visits the site and presses the Login button
    Given I visit the landing page
    And I press the "Login" button
    Then I should be on the "sign_in" page

  Scenario: Person visits the site and presses the Sign Up button
    Given I visit the landing page
    And I press the "Sign up" button
    Then I should be on the "sign_up" page

  Scenario: Person visits login page and presses the home button
    Given I visit the landing page
    And I press the "Login" button
    And I press the "CA Mailboxer" button
    Then I should be on the "landing" page
