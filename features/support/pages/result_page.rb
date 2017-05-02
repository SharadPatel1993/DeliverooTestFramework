class ResultPage < GenericPage

	def find_restaurant(rest)
		@browser.ul(class: "restaurant-index-page--grid-row").h3s.each do |name|
			# binding.pry
			if name.text == rest
				name.click 
				return
			end
		end
	end

	def find_menu_item(food)
		binding.pry
		@browser.ul(class: "results-list order--menu-items").lis.each do |item|
			if item.text ==  food
				item.click
				return
			end
		end
	end


end