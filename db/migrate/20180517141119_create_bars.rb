class CreateBars < ActiveRecord::Migration[5.2]
  def change
    create_table :bars do |t|
      t.text :name
      t.text :image
      t.text :description
      t.text :phone
      t.text :website

      t.timestamps
    end
  end
end
