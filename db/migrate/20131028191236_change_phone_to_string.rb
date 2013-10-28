class ChangePhoneToString < ActiveRecord::Migration
  def change
	reversible do |dir|
      change_table :users do |t|
        dir.up   { t.change :phone, :string }
        dir.down { t.change :price, :integer }
      end
    end
  end
end
