## CA Mailboxer

### Assignment Ruby 2.4.0 Code forked from CraftAcademy

Using untested legacy code do following: Write Acceptance tests for the entire workflow using Cucumber Write Unit tests for the models using RSpec Find and correct eventual errors in the legacy code Set up an automated way of deploying the software with Heroku

### Planning
See our plan on PivotalTracker https://www.pivotaltracker.com/n/projects/2132546

## Workflow outline

- Installed/required testing environment including RSpec, Cucumber, Travis and Coveralls
- Helpers: Warden and Shoulda Matchers
- Database cleaner strategy
- Behaviour and acceptance tests for:
1. Landing page feature
2. Log-in feature. User credentials, log-in and log out, reset password, log in failure scenarios.
3. Messaging feature: receive, reply, delete, trash
4. Set up auto deploy to Heroku
5. 'Remember me' feature (pending)
6. Create account (pending)

## Latest Status, Dec 1 2017

### Completed

- Landing page acceptance tests green and merged
- Send Message acceptance tests green and merged

### In Progress

- Unit tests for mailboxer green, waiting for code review
- Log out acceptance tests green, waiting for code review
- Reply to message acceptance tests green, refactoring in progress
- Receive message acceptance tests in progress
- Store login information acceptance tests in progress
- Delete message acceptance tests green, refactoring in progress

### Next Steps

- Create acceptance tests for sign up feature
- Create acceptance tests for password reset feature
- Create acceptance tests for login failure feature
