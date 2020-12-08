class MakeIngredientTypeOptionalForRecipeIngredient < ActiveRecord::Migration[6.0]
  def change
    change_column :recipe_ingredients, :ingredient_type_id, :bigint, foreign_key: true
  end
end
