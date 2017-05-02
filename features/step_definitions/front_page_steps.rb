Given(/^I am on the Deliveroo homepage$/) do
  @b.goto "https://deliveroo.co.uk/"
  expect(@b.url).to eq("https://deliveroo.co.uk/")
  @front_page = FrontPage.new @b
end

When(/^I enter a valid postcode$/) do
  @front_page.enter_postcode("TW10 6TF")
end

When(/^I click the find food button$/) do
  @front_page.find_food
  # @front_page.element_exists?()
end

Then(/^it should show a list of restuarants$/) do
  pending # Write code here that turns the phrase above into concrete actions
end