require 'rails_helper'

describe Address, type: :model  do
  it { should belong_to(:user) }
end