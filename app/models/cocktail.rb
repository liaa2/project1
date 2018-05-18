class Cocktail < ApplicationRecord
  belongs_to :bar, optional: true
  belongs_to :category, optional: true
end
