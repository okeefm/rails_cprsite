class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.datetime :start
      t.datetime :end
      t.integer :max_capacity
      t.text :web_description
      t.text :email_description
      t.string :class_location
	  t.belongs_to :organization

      t.timestamps
    end
  end
end
