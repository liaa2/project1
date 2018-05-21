class Category < ApplicationRecord
  # has_many :cocktails

  # has_many :bars, through: :cocktails

  def bar
    bars.uniq
  end
end
