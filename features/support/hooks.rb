#Hooks

bowser = Watir::Browser.new :chrome

Before do 
	@b = browser
end

at_exit do 
	browser.close
end
