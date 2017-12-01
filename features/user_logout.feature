Feature: Log out
  As a user
  In order to end my account session
  I would like to be able to log out

  Background:
    Given The following user exist
    | name   | email             | password |
    | Jenny  | jenny@random.com  | password |
    | Daniel | daniel@random.com | password |

  Scenario: Successfully log out
    Given I am logged in as "Jenny"
    And I visit the landing page
    When I click "Logout" button
    Then I should be on the landing page
    And I should see "Signed out successfully"
