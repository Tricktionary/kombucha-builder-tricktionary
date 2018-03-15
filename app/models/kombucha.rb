class Kombucha < ApplicationRecord
  has_and_belongs_to_many :ingredients

  validates :name, present: true
  validates :brand, present: true

  def to_h
    {
      "id": self.id,
      "name": self.name,
      "brand": self.brand,
      "fizziness_level": self.fizziness_level,
      "ingredients": self.ingredient.map(&:name)
    }
  end
end
