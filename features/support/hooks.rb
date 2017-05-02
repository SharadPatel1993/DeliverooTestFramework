#Hooks

browser = Watir::Browser.new :chrome

Before do
	@b = browser
end

After('@GermanSite') do
  @b.goto "https://deliveroo.co.uk/"
end

at_exit do
	browser.close
end	