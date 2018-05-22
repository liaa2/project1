class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :username
      t.text :image
      t.text :content
      t.datetime :time

      t.timestamps
    end
  end
end
