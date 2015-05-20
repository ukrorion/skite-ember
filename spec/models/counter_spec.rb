require 'rails_helper'

describe Counter, type: :model  do
  describe "fields and relation" do
    it { should belong_to(:product) }
    it { should belong_to(:address) }
  end
end