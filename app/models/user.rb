class User < ApplicationRecord
  has_many :favorites
  has_many :reviews
  has_many :restrooms, through: :favorites
  has_secure_password
 
end
