require 'rails_helper'

describe Address, type: :model  do
  describe "fields" do
    let(:address) { FactoryGirl.create :address }

    it 'should has defined attributes' do
      expect(address.attributes.keys).to include("region", "city", "street", "house_number", "apartment_number", "postcode")
    end

    it 'should be a string values' do
      expect(address.region).to be_a String
      expect(address.city).to be_a String
      expect(address.street).to be_a String
      expect(address.house_number).to be_a String
      expect(address.apartment_number).to be_a String
      expect(address.postcode).to be_a String
    end

  end
end