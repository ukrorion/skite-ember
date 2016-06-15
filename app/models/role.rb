class Role < ActiveRecord::Base
  has_and_belongs_to_many :users

  validates :name, uniqueness: true

  def self.default
    where(name: 'guest').first_or_create do |role|
      role.name = 'guest'
      role.description = 'Guest role'
      role.priority = 0
      role.active = true
    end
  end
  
end
