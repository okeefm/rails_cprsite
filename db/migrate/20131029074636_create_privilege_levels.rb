class CreatePrivilegeLevels < ActiveRecord::Migration
  def change
    create_table :privilege_levels do |t|
      t.string :name

      t.timestamps
    end
	
	create_table :users_privilege_levels do |t|
		t.belongs_to :user
		t.belongs_to :privilege_level
	end
  end
end
