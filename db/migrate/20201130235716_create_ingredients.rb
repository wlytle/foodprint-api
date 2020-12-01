class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.references :greenhouse_gas, null: false, foreign_key: true
      t.references :water_use, null: false, foreign_key: true
      t.references :eutrophication, null: false, foreign_key: true

      t.timestamps
    end
  end
end
