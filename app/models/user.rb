class User < ApplicationRecord
  has_many :favorites
  has_many :restrooms, through: :favorites
  
  has_secure_password
  validates_presence_of :username
  validates :username, uniqueness: { case_sensitive: false }
end
