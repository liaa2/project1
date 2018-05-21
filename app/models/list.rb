class List < ApplicationRecord
  has_and_belongs_to_many :cocktails
  belongs_to :user, optional: true

  has_many :bars, through: :cocktails
end
