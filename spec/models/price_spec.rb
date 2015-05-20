require 'rails_helper'

describe Price, type: :model  do
  describe "fields and relation" do
    it { should belong_to(:product) }

    it { should have_db_column(:value).of_type(:float) }
    it { should have_db_column(:end_date).of_type(:date) }
  end
end