Feature: Delete message
  As a user
  In order to delete a message
  I would like to delete a message and press the button "Move to trash"

  Background:
  Given following users exists
    | name   | email             | password |
    | Jenny  | jenny@ranom.com   | password |
    | Daniel | daniel@random.com | password |

  Scenario: Deleting a message
    Given I am logged in as "Daniel"
    And I send a mail to "Jenny"
    And I am on the "home page"
    And I click on the "Logout" link
    Given I am logged-in as "Jenny"
    And I am on the "home page"
    And I click on the "Inbox" link
    Then I should have "1" messages
    And I click on the "View" link
    And I click on the "Move to trash" link
    Then I should have "0" messages
