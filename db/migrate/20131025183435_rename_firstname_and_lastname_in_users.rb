class RenameFirstnameAndLastnameInUsers < ActiveRecord::Migration
  def change
	rename_column :users, :firstname, :first_name
	rename_column :users, :lastname, :last_name
	rename_column :users, :address1, :address_1
	rename_column :users, :address2, :address_2
  end
end
