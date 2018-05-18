class CreateCocktails < ActiveRecord::Migration[5.2]
  def change
    create_table :cocktails do |t|
      t.text :name
      t.text :image
      t.text :description
      t.integer :bar_id
      t.integer :category_id

      t.timestamps
    end
  end
end
