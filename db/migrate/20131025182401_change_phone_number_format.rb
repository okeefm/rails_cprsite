class ChangePhoneNumberFormat < ActiveRecord::Migration
  def change
	reversible do |dir|
      change_table :users do |t|
        dir.up   { t.change :phone, :phone_number }
        dir.down { t.change :price, :string }
      end
    end
  end
end
