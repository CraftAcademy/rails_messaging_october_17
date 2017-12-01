Feature: Receive a message
  As a user
  In order to receive a message
  I would like to see a notification in my inbox section

  Background:
    Given following users exists
      | name   | email             | password |
      | Jenny  | jenny@ranom.com   | password |
      | Daniel | daniel@random.com | password |

  Scenario: Receive a message
    Given I am logged in as "Daniel"
    And I send a mail to "Jenny"
    And I visit the "home page"
    And I click on the "Logout" link
    Given I am logged in as "Jenny"
    And I visit the "home page"
    And I click on the "Inbox" link
    Then I should have "1" messages
