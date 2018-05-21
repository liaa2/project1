class RemoveCategoryIdFromCocktails < ActiveRecord::Migration[5.2]
  def change
    remove_column :cocktails, :category_id, :string
  end
end
