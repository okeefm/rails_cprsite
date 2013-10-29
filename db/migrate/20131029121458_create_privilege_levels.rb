class CreatePrivilegeLevels < ActiveRecord::Migration
  def change
    create_table :privilege_levels do |t|
      t.string :name

      t.timestamps
    end
    add_index :privilege_levels, :name, unique: true
	
	create_table :privilege_levels_users do |t|
		t.belongs_to :user
		t.belongs_to :privilege_level
	end
	
  end
end
