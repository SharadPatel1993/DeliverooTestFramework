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

	Scenario: Changing country
		When I click on the country
		And select a different country
		Then it should take me to the home page for that country

  @GermanSite
  Scenario: Changing language
    Given I am on the German site
    When I click on the language
    And select a different language
    Then the homepage should change to that language