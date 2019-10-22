# frozen_string_literal: true

class Kombucha < ApplicationRecord
  has_many :recipe_items
  has_many :ratings
  has_many :ingredients, through: :recipe_items

  validates :name, presence: true
  validates :fizziness_level, inclusion: { in: %w( high medium low ) }

  def to_h
    {
      "id": self.id,
      "name": self.name,
      "fizziness_level": self.fizziness_level,
      "ingredients": self.ingredients.map(&:name)
    }
  end

  def base_ingredient
    self.ingredients.where(base: true).first
  end 

  def caffeine_free
    ingredients = self.ingredients
    ingredients.each do |ingredient|
      if ingredient.caffeine_free == false
        return false
      end
    end

    true
  end

  def vegan
    ingredients = self.ingredients
    ingredients.each do |ingredient|
      if ingredient.vegan == false
        return false
      end
    end

    true
  end

  def average_rating
    self.ratings.average(:rating)
  end
end
