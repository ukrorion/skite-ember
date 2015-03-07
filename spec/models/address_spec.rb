require 'rails_helper'

describe Address, type: :model  do
  it { should belong_to(:user) }
  it { should has_many(:counters) }
  xit { should has_many(:services).through(:counters) }
end