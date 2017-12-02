Given("The following user doesn't exist") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end

Then("I should be on the welcome page") do
  expect(current_path).to eq root_path
end
