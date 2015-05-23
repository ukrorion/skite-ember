Given(/^I am a guest user$/) do
end

When(/^I come to home page$/) do
  visit '/'
end

Then(/^I should be redirected to login page$/) do
  expect(page).to have_content 'Log in'
end

Then(/^I fill login form with invalid data$/) do
  within("#new_user") do
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'caplin'
  end
  click_button 'Log in'
end

Then(/^I should see warning message with text "(.*?)"$/) do |text|
  expect(find('.alert-box')).to have_content(text)
end
