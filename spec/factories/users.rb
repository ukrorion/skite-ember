require 'faker'

FactoryGirl.define do
  factory :user do
    first_name "Jone"
    last_name "Dou"
    email
    password 'password'
    date_of_birth { 21.years.ago }
    gender 'Mail'
  end
end