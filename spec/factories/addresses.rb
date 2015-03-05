require 'faker'

FactoryGirl.define do
  factory :address do
    region "Ivano-Frankivsk"
    city {Faker::Address.city}
    street {Faker::Address.street_name}
    house_number {Faker::Address.building_number}
    apartment_number "12a"
    postal_code {Faker::Address.postcode}
    association  :user, factory: :user
  end
end