Given("following users exists") do |table|
  table.hashes.each do |user|
    User.create(user)
  end
end

Given("I am logged in as {string}") do |name|
  @user = User.find_by(name: name)
  login_as(@user, scope: :user)
end

Given("I am on the {string}") do |string|
  visit root_path
end

Given("I click on {string} button") do |element|
  click_link_or_button element
end

Given("I am on the {string} page") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I select a {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I fill in {string} with {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be on {string} page") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I click on {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I click {string} on modal") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I shoud be o{string} page") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
