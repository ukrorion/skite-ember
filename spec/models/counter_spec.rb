require 'rails_helper'

describe Counter, type: :model  do
  describe "fields and relation" do
    it { should have_db_column(:init_val).typr_of(:decimal) } 
    it { should have_db_column(:final_val).type_of(:decimal) } 
    it { should have_db_column(:checked_at).type_of(:date) } 
    it { should have_db_column(:init_at).type_of(:date) }  

    it { should belong_to(:provider) }
    it { should belong_to(:address) }
  end
end