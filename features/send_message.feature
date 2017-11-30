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
    And I click on "Compose" button
    And  I select "Raoul"
    And I fill in "Subject" with "Subject Content"
    And I fill in "Message" with "Message Content"
    And I click on "Send Message" button
    Then I should be on "Conversation Number" page
