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