class FrontPage < GenericPage
	def find_food
		@browser.input(id: "find_food").click
	end

  def enter_postcode(postcode)
    @browser.text_field(class: "search-input").set(postcode)
  end

  def click_country
    @browser.a(class: "page-header--nav-link ").wait_until_present
    @browser.a(class: "page-header--nav-link ").click
  end

  def click_language
    @browser.span(class: "page-header-dropdown--title ").wait_until_present
    @browser.span(class: "page-header-dropdown--title ").click
  end
end 