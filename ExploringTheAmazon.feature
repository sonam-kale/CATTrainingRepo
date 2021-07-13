##########################################################
#Name :Sonam Gund
#Assignmnets:Amazon
###########################################################
Feature: Exploring the Amazon

Background:
Given I import scenarios from "ExploringTheAmazon_Utilities.feature"
Given I assign "Chrome" to variable "browser"
Given I assign "http://www.google.com" to variable "dstWebsite"
And I assign "http://www.amazon.in/" to variable "dstWebpage"
And I assign 10 to variable "maxwait"



Scenario: Exploring the Amazon
Given I "open the browser and navigate to the Amazon digital store"
	When I execute scenario "Open Browser to Specified Page"
Once I see element "xPath://div[@id='nav-logo']" in web browser

When I "search for an item"
Given I assign "compass" to variable "searchPhrase"
When I execute scenario "Search for Item"
And I wait $maxwait seconds
Then I save web browser screenshot

And I "return to Amazon's home page"
When I execute scenario "Return to Amazon Homepage"

And I "navigate to the Best Sellers page"
Given I execute scenario "Navigate to Best Seller"

And I "return to Amazon's home page"
When I execute scenario "Return to Amazon Homepage"
	
And I "navigate to the Prime Video selection"
When I execute scenario "Prime Video selection"