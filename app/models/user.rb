class User < ApplicationRecord
  has_many :lists
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, on: :create
  has_and_belongs_to_many :bars

  has_many :comments

  ratyrate_rater

end
