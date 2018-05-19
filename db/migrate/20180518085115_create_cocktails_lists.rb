class CreateCocktailsLists < ActiveRecord::Migration[5.2]
  def change
    create_table :cocktails_lists, id: false do |t|
      t.integer :cocktail_id
      t.integer :list_id
    end
  end
end
