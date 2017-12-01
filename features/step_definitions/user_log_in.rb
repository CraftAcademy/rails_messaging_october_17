Given("The following user exist") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end

Given("I visit sign in page") do
  visit new_user_session_path
end

Given("I fill in the {string} with {string}") do |field_name, value|
  fill_in field_name, with: value
end

Given("I fill in the {string} with my {string}") do |field_name, value|
  fill_in field_name, with: value
end

Given("I click {string} button") do |button|
  click_link_or_button button
end

Then("show me the page") do
  save_and_open_page
end

Then("I should be on the landing page") do
  expect(current_path).to eq root_path
end

Then("I should see {string}") do |text|
  expect(page).to have_content text
end

Then("I should be on the sign in page") do
  expect(current_path).to eq new_user_session_path
end
