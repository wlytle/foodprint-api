class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.references :greenhouse_gass, foreign_key: true
      t.references :water_use, foreign_key: true
      t.references :eutrophication, foreign_key: true

      t.timestamps
    end
  end
end
