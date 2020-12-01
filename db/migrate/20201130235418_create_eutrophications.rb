class CreateEutrophications < ActiveRecord::Migration[6.0]
  def change
    create_table :eutrophications do |t|
      t.string :product
      t.string :eutrophication

      t.timestamps
    end
  end
end
