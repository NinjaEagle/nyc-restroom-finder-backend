class User < ApplicationRecord
  has_many :favorites
  has_many :restrooms, through: :favorites
  
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
end
