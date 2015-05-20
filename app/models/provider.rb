class Provider < ActiveRecord::Base
  belongs_to  :user
  belongs_to  :address
  has_many    :products
end