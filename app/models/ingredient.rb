class Ingredient < ApplicationRecord
  has_and_belongs_to_many :cocktails

  has_many :bars, through: :cocktails
end
