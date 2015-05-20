require 'rails_helper'

describe Role, type: :model  do
  describe "fields and relation" do
    it { should have_and_belong_to_many(:users) }

    it { should have_db_column(:name).of_type(:string) }
    it { should have_db_column(:priority).of_type(:integer) }
    it { should have_db_column(:active).of_type(:boolean) }
  end
end