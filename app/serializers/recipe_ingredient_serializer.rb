class RecipeIngredientSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :unit, :whole_line, :ingredient
  belongs_to :recipe
  belongs_to :ingredient
end
