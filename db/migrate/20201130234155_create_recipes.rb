class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :instructions
      t.string :yield
      t.string :category
      t.boolean :public
      t.string :image

      t.timestamps
    end
  end
end
