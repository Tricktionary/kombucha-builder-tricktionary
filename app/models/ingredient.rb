class Ingredient < ApplicationRecord
  validates :name, present: true
  validates :caffeine_free, present: true
end
