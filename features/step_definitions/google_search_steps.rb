Given(/^I visit "(.*?)"$/) do |link_address|
  visit "#{link_address}"
  # click_link "kujv"
end

And(/^I should see search box$/) do
  # fill_in "password", with: "abcd1234"
  fill_in "q", with: "Selenium"
end

When(/^I hit search button$/) do
  click_button "Search"

  # require 'pry';binding.pry
end

Then(/^I should see a list of articles$/) do

  has_content?("Selenium - Web Browser Automation")
  click_on("Selenium - Web Browser Automation")
  has_content?("Selenium automates browsers. That's it! What you do with that power is entirely up to you.
                Primarily, it is for automating web applications for testing purposes, but is certainly not limited to just that.
                Boring web-based administration tasks can (and should!) also be automated as well.")
end






