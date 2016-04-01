require 'rails_helper'

describe User, type: :model  do
  describe "fields" do
    let(:user) { FactoryGirl.create :user }

    it 'should has defined attributes' do
      expect(user.attributes.keys).to include("email", "encrypted_password", "first_name", "last_name", "date_of_birth", "gender")
    end

    it 'should be a string values' do
      expect(user.email).to be_a String
      expect(user.encrypted_password).to be_a String
      expect(user.first_name).to be_a String
      expect(user.last_name).to be_a String
      expect(user.gender).to be_a String
    end

    it 'should be a date values' do
      expect(user.date_of_birth).to be_a Date
    end
  end
end
