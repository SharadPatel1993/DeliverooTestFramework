Feature: Front page

Test things on the Deliveroo front page

	Background:
		Given I am on the Deliveroo homepage

	Scenario: Entering a valid postcode
		When I enter a valid postcode
		And I click the find food button
		Then it should show a list of restuarants

	Scenario: Entering an invalid postcode
		When I enter an invalid postcode
		And I click the find food button
		Then it should show an invalid postcode message



