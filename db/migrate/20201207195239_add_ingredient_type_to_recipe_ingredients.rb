class AddIngredientTypeToRecipeIngredients < ActiveRecord::Migration[6.0]
  def change
    add_reference :recipe_ingredients, :ingredient_type, foreign_key: true
  end
end
