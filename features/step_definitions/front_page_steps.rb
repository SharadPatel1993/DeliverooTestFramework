Given(/^I am on the Deliveroo homepage$/) do
  @b.goto "https://deliveroo.co.uk/"
  expect(@b.url).to eq("https://deliveroo.co.uk/")
end

When(/^I enter a valid postcode$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click the find food button$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^it should show a list of restuarants$/) do
  pending # Write code here that turns the phrase above into concrete actions
end