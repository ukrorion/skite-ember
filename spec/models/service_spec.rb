require 'rails_helper'

describe Service, type: :model  do
  describe "fields and relation" do
    it { should have_many(:products) } 

    it { should have_db_column(:name).of_type(:string) }
  end
end