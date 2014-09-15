class User < ActiveRecord::Base

  validates_presence_of :name

  has_secure_password
  validates :password, length: { minimum: 5 }
  validates_confirmation_of :password
  
end
