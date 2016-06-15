require 'faker'

FactoryGirl.define do
  factory :role do
    name 'user'
    priority 1000
    description 'Simple user with limited rights'
    active true
  end
end