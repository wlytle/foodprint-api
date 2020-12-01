class CreateWaterUses < ActiveRecord::Migration[6.0]
  def change
    create_table :water_uses do |t|
      t.string :product
      t.string :use

      t.timestamps
    end
  end
end
