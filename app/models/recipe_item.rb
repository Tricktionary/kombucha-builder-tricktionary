class RecipeItem < ApplicationRecord
  belongs_to :ingredient
  belongs_to :kombucha
end
