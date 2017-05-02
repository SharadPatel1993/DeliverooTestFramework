class GenericPage
	attr_accessor :browser

	def initialize(browser)
		@browser = browser
	end

	def element_exists?(el)
		@browser.element(el).exists?
	end

	def enter
		@browser.send_keys "\n"
	end
end