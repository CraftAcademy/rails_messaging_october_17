Given("I check the {string} check_box") do |check_box|
  check('Remember me')

end

Given(/^I switch to a new window$/) do
  Capybara.current_session.driver.reset!
  window = open_new_window
  switch_to_window(window)
  visit root_path
end

Then('I would like my user login information to be stored') do
end


Then(/^I would like my user login information not to be stored$/) do
  expect(page).to_not have_content 'Logout'
end