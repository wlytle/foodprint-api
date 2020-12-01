class RecipeIngredientSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :unit, :ingredient
  belongs_to :recipe
  belongs_to :ingredient
end
