class Product < ActiveRecord::Base
  belongs_to :provider
  belongs_to :service
  has_many :prices
end