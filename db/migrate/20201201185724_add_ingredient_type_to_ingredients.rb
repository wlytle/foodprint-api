class AddIngredientTypeToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_reference :ingredients, :ingredient_type, foreign_key: true
  end
end
