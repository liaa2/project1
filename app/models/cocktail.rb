class Cocktail < ApplicationRecord
  belongs_to :bar, optional: true
  belongs_to :category, optional: true

  has_and_belongs_to_many :ingredients
  has_and_belongs_to_many :lists
end
