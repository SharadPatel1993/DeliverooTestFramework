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
end

Then(/^it should show a list of restuarants$/) do
	@b.h1(class: "restaurant-index-page--section-title").wait_until_present
	expect(@b.h1(class: "restaurant-index-page--section-title").text).to include("restaurants")
  expect(@front_page.element_exists?(class: "restaurant-index-page--grid-row")).to eq(true)
end

When(/^I enter an invalid postcode$/) do
  @front_page.enter_postcode("ABC123")
end

Then(/^it should show an invalid postcode message$/) do
  @b.p(class: "landing-index-page-search--error").wait_until_present
  expect(@front_page.element_exists?(class: "landing-index-page-search--error")).to eq(true)
end

When(/^I click on the country$/) do
	@front_page.click_country
end

When(/^select a different country$/) do
  @b.a(class: "page-header-dropdown--text page-header-dropdown--flag flag-de").wait_until_present
  @b.a(class: "page-header-dropdown--text page-header-dropdown--flag flag-de").click
end

Then(/^it should take me to the home page for that country$/) do
  expect(@b.url).to eq("https://deliveroo.de/en/")
end

Given(/^I am on the German site$/) do
  @b.goto "https://deliveroo.de/en/"
end

When(/^I click on the language$/) do
  @front_page.click_language
end

When(/^select a different language$/) do
	@b.a(:text => /Deutsch/).wait_until_present
  @b.a(:text => /Deutsch/).click
end

Then(/^the homepage should change to that language$/) do
  expect(@b.url).to eq("https://deliveroo.de/de/")
end