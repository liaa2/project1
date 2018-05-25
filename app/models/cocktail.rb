class Cocktail < ApplicationRecord
  belongs_to :bar, optional: true
  # belongs_to :category, optional: true
  validates :name, presence: true
  
  has_and_belongs_to_many :ingredients
  has_and_belongs_to_many :lists

  enum category: ["Stirred Cocktails", "Sours", "Flips, Fizzes, Swizzles, and Smashes", "Highballs"]

end
