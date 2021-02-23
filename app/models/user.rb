class User < ApplicationRecord
  has_many :favorites
  has_many :reviews
  # has_many :restrooms, through: :favorites
  has_secure_password
  validates :username, uniqueness: true
  validates :username, prescence: true
  validates :name, presence: true
  validates :password, presence: true
  validates :password, confirmation: { case_sensitive: true }
 
end
