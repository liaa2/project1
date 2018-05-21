class Bar < ApplicationRecord
  has_many :cocktails

  has_many :categories, through: :cocktails
  has_many :ingredients, through: :cocktails
end
