class ChangeRecipesColumnYieldToFloat < ActiveRecord::Migration[6.0]
  def change
    remove_column :recipes, :yield, :decimal, precision: 10, scale: 2
    add_column :recipes, :yield, :integer

    remove_column :recipe_ingredients, :quantity, :integer
    add_column :recipe_ingredients, :quantity, :decimal, precision: 10, scale: 2
    add_column :recipe_ingredients, :whole_line, :string
  end
end
