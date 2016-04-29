Given(/^Visit to homepage$/) do
  visit "/"
end

Then(/^I should see "(.*)"$/) do |data|
  last_response.body.should =~ /#{data}/m
end
