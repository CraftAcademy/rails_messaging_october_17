Feature: Send messages
  As a user
  In order to send a message
  I would like to add a message, receiver and press the button "Send Message"

  Background:
  Given following users exists
    | name   | email             | password |
    | Jenny  | jenny@random.com  | password |
    | Daniel | daniel@random.com | password |

  Scenario: Sending a message
    Given I am logged in as "Daniel"
    And I send a mail to "Jenny"
    And I am on the "home page"
    And I click on the "Logout" link
    Given I am logged in as "Jenny"
    And I am on the "home page"
    And I click on the "Inbox" link
    Then I should have "1" messages
