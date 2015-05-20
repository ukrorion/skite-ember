require 'rails_helper'

describe Provider, type: :model  do
  describe "fields and relation" do
    it { should belong_to(:user) }
    it { should belong_to(:address) }
    it { should have_many(:products) }

    it { should have_db_column(:name).of_type(:string) }
    it { should have_db_column(:bank_account).of_type(:integer) }
    it { should have_db_column(:checking_account).of_type(:integer) }
  end
end