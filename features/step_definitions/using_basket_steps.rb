
When(/^I click on Pizza express$/) do
  @result_page= ResultPage.new @b
  @result_page.find_restaurant("PizzaExpress")
  # binding.pry
  sleep 3
  Watir::Wait.until(5) {
    @b.h1(class: "restaurant__name").visible?
  }
  expect(@b.h1(class: "restaurant__name").text).to include("PizzaExpress")
end

When(/^I add Garlic bread and Mozzarella$/) do
  @result_page= ResultPage.new @b

  @result_page.find_menu_item("Garlic Bread with Mozzarella (V)")
end

Then(/^I should see the item in my basket$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
