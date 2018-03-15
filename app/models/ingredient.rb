class Ingredient < ApplicationRecord
  has_and_belongs_to_many :kombuchas

  validates :name, present: true
  validates :caffeine_free, present: true
end
