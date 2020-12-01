class CreateGreenhouseGasses < ActiveRecord::Migration[6.0]
  def change
    create_table :greenhouse_gasses do |t|
      t.string :product
      t.string :land_use_change
      t.string :animal_feed
      t.string :farm
      t.string :processing
      t.string :transport
      t.string :packaging
      t.string :retail

      t.timestamps
    end
  end
end
