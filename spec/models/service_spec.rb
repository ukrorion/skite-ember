require 'rails_helper'

describe Service, type: :model  do
  it { should has_and_belong_to_many(:providers) }
end