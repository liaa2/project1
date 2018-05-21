class CreateBarsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :bars_users, id:false do |t|
      t.integer :user_id
      t.integer :bar_id
    end
  end
end
