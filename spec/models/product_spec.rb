require 'rails_helper'

describe Product, type: :model  do
  describe "fields and relation" do
    it { should belong_to(:provider) }
    it { should belong_to(:service) }
    it { should have_many(:prices) }

    it { should have_db_column(:editable).of_type(:boolean) }
  end
end