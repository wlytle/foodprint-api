class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :instructions, :yield, :public, :image
  has_many :recipe_ingredients
  has_many :ingredients
end
