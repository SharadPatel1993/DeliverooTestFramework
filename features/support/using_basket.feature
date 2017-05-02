Feature: usingShoppingBasket

Background: 
	Given I am on the Deliveroo homepage
	And I enter a valid postcode
	And I click the find food button
	Then it should show a list of restuarants
@wip
	Scenario:Adding an item in the basket 
	 When I click on Pizza express
	 And I add Garlic bread and Mozzarella
	 Then I should see the item in my basket
