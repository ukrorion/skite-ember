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

When(/^I am on the login page$/) do
  visit '/users/sign_in'
end

When(/^I click "(.*?)" link$/) do |text|
  click_link(text)
end

Then(/^I should see a signup form$/) do
  expect(page).to have_content('Sign up')
  expect(page).to have_css('form#new_user')
end

When(/^I fill form with correct data$/) do
  @user = FactoryGirl.create(:user, email: 'jone.dou@skite-ember.com')
  within("//form[@id='new_user']") do
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    fill_in 'First name', with: @user.first_name
    fill_in 'Last name', with: @user.last_name
    fill_in 'Date of birth', with: @user.date_of_birth
    select 'Mail', :from => 'Gender'
  end
  click_button 'Sign up'
end