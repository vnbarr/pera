require_relative "../../lib/grid"

Given(/^Visit to homepage$/) do
  visit "/"
end

Then(/^I should see "(.*)"$/) do |data|
  last_response.body.should =~ /#{data}/m
end

When(/^Enter (\d+) as x coordinate and (\d+) as y coordinate$/) do |x, y|
  fill_in("x", :with => x)
  fill_in("y", :with => y)
  click_button("Shoot")
end

When(/^All bombs are used$/) do
  for i in 1..10
    fill_in("x", :with => "0")
    fill_in("y", :with => "0")
    click_button("Shoot")
  end
end

Then(/^I press restart$/) do
  click_button("restart")
end
