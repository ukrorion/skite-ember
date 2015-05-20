require 'rails_helper'

describe User, type: :model  do
  describe "fields and relation" do
    it { should have_and_belong_to_many(:roles) }
    it { should have_many(:addresses) }
    it { should have_many(:providers) }

    it { should have_db_column(:email).of_type(:string) }
    it { should have_db_column(:encrypted_password).of_type(:string) }
    it { should have_db_column(:first_name).of_type(:string) }
    it { should have_db_column(:last_name).of_type(:string) }
    it { should have_db_column(:date_of_birth).of_type(:date) }
    it { should have_db_column(:gender).of_type(:string) }
  end
end
