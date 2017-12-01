## RAILS Messaging Assignment w. 5 Craft Academy Lions
###CA Mailboxer Nov 30 2017

- Installed new gem 'launchy'
- Updated, organized and created new stories on PivotalTracker
- Log-in feature merged
- Deployed on Heroku https://rails-messaging-lions.herokuapp.com/
- Deploy automatically every time travis builds successfully
- Landing page feature PR ready for final review
- Send message PR ready for final review
- removed email notifications from travis PR ready for final review
- Delete message ready for final review
- Reply to message PR created and tagged [WIP]
- Mailbox unit tests PR created and tagged [WIP]
- User can log out PR created and tagged [WIP]

###Next steps:
- Continue writing acceptance test for Log out and implement unit tests
- Continue writing acceptance tests and unit tests for Message features
- Start writing acceptance test for Signup and implement unit tests


###CA Mailboxer Nov 28-29 2017

**Planning**
See our plan on PivotalTracker https://www.pivotaltracker.com/n/projects/2132546

**Assignment**
Ruby 2.4.0
Code forked from CraftAcademy

Using untested legacy code do following:
Write Acceptance tests for the entire workflow using Cucumber
Write Unit tests for the models using RSpec
Find and correct eventual errors in the legacy code
Set up an automated way of deploying the software with Heroku

**Install**

Add to Gemfile:
```
group :development, :test do
   gem 'factory_bot_rails'
   gem 'pry-byebug'
   gem 'pry-rails'
   gem 'rspec-rails'
   gem 'shoulda-matchers'
   gem 'cucumber-rails', require: false
   gem 'database_cleaner'
   gem 'launchy'
```
Add to .rspec:
```
--color
--format documentation
```
Add to config/application.rb:
```
 generate.routing_specs false
 generate.controller_specs false

```
Add shoulda-matchers to rails-helper:
```
Shoulda::Matchers.configure do |config|
  config.integrate do |with|
  with.test_framework :rspec
  with.library :rails
```
Add `coveralls` and requirements

Add to .travis.yml
```
- bundle exec rails ci:tests
```
```
app:
  master: rails-messaging-lions
run:
  - bundle exec rails db:migrate
```
Add to features/support/env.rb
```
require 'coveralls'
Coveralls.wear_merged!('rails')
```
Add features/support/warden.rb
```
Warden.test_mode!
World Warden::Test::Helpers
After { Warden.test_reset! }
```
Add lib/tasks/ci.rake
```
unless Rails.env.production?
 require 'rspec/core/rake_task'
 require 'cucumber/rake/task'
 require 'coveralls/rake/task'

 Coveralls::RakeTask.new

 namespace :ci do
   task tests: [:spec, :cucumber, 'coveralls:push']
 end
end
```
Add to spec/spec_helper.rb
```
Coveralls.wear_merged!('rails')
```
