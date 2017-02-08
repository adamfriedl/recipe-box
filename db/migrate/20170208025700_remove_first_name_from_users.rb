class RemoveFirstNameFromUsers < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :first_name, :string
  	rename_column :users, :last_name, :name
  end
end
