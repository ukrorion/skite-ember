require 'rails_helper'

describe Provider, type: :model  do
  it { should belong_to(:address) }
  it { should has_and_belong_to_many(:services) }
end