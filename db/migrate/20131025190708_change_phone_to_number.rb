class ChangePhoneToNumber < ActiveRecord::Migration
  def change
	reversible do |dir|
      change_table :users do |t|
        dir.up   { t.change :phone, :integer }
        dir.down { t.change :price, :phone_number }
      end
    end
  end
end
