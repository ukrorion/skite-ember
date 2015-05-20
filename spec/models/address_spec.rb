require 'rails_helper'

describe Address, type: :model  do
  describe "fields and relation" do
    it { should belong_to(:user) }
    it { should have_many(:counters) }

    it { should have_db_column(:region).of_type(:string) }
    it { should have_db_column(:city).of_type(:string) }
    it { should have_db_column(:street).of_type(:string) }
    it { should have_db_column(:house_number).of_type(:string) }
    it { should have_db_column(:apartment_number).of_type(:string) }
    it { should have_db_column(:postal_code).of_type(:string) }
    it { should have_db_index(:user_id) }
  end
end