Given(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content text
end

When(/^I don't fill in "(.*?)"$/) do |name|
 fill_in "name", :with => ""
 click_on "Play"
end

Then(/^I should "(.*?)"$/) do |text|
  expect(page).to have_content text
end

Given(/^there are no opponents$/) do
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |name, text|
  fill_in "name", :with => text
end

When(/^I click on "(.*?)"$/) do |button|
  click_on button
end

Then(/^I go to the welcome page$/) do
  visit '/welcome'
end

Then(/^I go to the place_ships page$/) do
  visit '/place_ships'
end