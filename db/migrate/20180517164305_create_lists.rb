class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.text :occasion

      t.timestamps
    end
  end
end
