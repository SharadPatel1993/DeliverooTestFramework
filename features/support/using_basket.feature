Feature: usingShoppingBasket

Background: 
	Given that I am in Deliveroo homepage
	And I enter a valid postcode
	And I click the find food button

	Scenario:Adding an item in the basket 
	 When I click on Pizza express
	 And I add Garlic bread and Mozzarella
	 Then I should see the item in my basket
