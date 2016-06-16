class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :roles
  has_many :addresses
  has_many :providers

  #callback
  after_create :set_default_role

  def set_default_role
    self.roles << Role.default
  end
  
end
