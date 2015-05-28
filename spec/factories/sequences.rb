FactoryGirl.define do
  sequence :email do |n|
    "user#{n}@skite-ember.com"
  end
end