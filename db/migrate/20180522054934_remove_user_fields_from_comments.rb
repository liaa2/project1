class RemoveUserFieldsFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :username, :string
    remove_column :comments, :image, :string
    remove_column :comments, :time, :string
  end
end
