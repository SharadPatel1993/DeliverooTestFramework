class FrontPage < GenericPage
	def find_food
		@browser.input(id: "find_food").click
	end

  def enter_postcode(postcode)
    @browser.text_field(class: "search-input").set(postcode)
  end
end 