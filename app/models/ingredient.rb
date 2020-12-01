class Ingredient < ApplicationRecord
  belongs_to :greenhouse_gass, optional: true
  belongs_to :water_use, optional: true
  belongs_to :eutrophication, optional: true
  belongs_to :ingredient_type, optional: true
  has_many :recipe_ingredients, dependent: :destroy
  has_many :recipes, through: :recipe_ingredients
end
