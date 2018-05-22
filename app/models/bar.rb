class Bar < ApplicationRecord
  has_many :cocktails
  has_many :comments
  has_and_belongs_to_many :users

  # has_many :categories, through: :cocktails
  has_many :ingredients, through: :cocktails
  has_many :lists, through: :cocktails
end
