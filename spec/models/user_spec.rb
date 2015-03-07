require 'rails_helper'

describe User, type: :model  do
  it { should has_many(:addresses) }
end