Feature: Reply to message
  As a user
  In order to reply to a message
  I would like to reply to a message and press the button "Reply"

  Background:
    Given following users exists
      | name   | email             | password |
      | Jenny  | jenny@ranom.com   | password |
      | Daniel | daniel@random.com | password |

  Scenario: Replying to a message
    Given I am logged in as "Daniel"
    And I am on the "home page"
    And I click on the "Inbox" link
    And I click on the "View" link
    And I send a mail to "Jenny"
    And I am on the "home page"
    And I click on the "Logout" link
    Given I am logged-in as "Jenny"
    And I am on the "home page"
    And I click on the "Inbox" link
    Then I should have "1" messages
    And I click on the "View" link
