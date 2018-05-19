class CreateCocktailsIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :cocktails_ingredients, id: false do |t|
      t.integer :ingredient_id
      t.integer :cocktail_id
    end
  end
end
