Given("following users exists") do |table|
  table.hashes.each do |user|
    User.create(user)
  end
end

Given("I am logged in as {string}") do |name|
  @user = User.find_by(name: name)
  login_as(@user, scope: :user)
end

Given("I send a mail to {string}") do |name|
  @receiver = User.find_by(name: name)
  @user.send_message(@receiver, 'Lorem ipsum...', 'Subject')
end

Given("I am on the {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I click on the {string} link") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am logged-in as {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should have {string} messages") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
