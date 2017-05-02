class FrontPage < GenericPage
	def find_food
		@browser.input(id: "find_food").click
	end
end 