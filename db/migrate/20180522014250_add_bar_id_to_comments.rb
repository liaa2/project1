class AddBarIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :bar_id, :integer
  end
end
