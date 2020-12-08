class RecipeIngredientSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :unit, :whole_line, :ingredient_type, :ingredient
  belongs_to :ingredient
  belongs_to :ingredient_type
end
