Given("I visit the landing page") do
  visit root_path
end

When("I press the {string} button") do |link|
  click_link_or_button link
end

Then("I should be on the {string} page") do |path|
  expect(page.current_path).to eq page_path(path)
end

def page_path(path)
  if path == 'landing'
    root_path
  else
    "/users/#{path}"
  end
end
