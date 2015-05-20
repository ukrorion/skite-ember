class Counter < ActiveRecord::Base
  belongs_to :product
  belongs_to :address
end