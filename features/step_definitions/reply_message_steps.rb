Given("I am logged-in as {string}") do |name|
  @user = User.find_by(name: name)
  login_as(@user, scope: :user)
end


Given("I am on the {string} page") do |string|
  visit 'mailbox/inbox'
end
