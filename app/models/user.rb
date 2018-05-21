class User < ApplicationRecord
  has_many :lists
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_and_belongs_to_many :bars
end
