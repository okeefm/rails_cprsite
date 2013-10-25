class CreateCourseTypes < ActiveRecord::Migration
  def change
    create_table :course_types do |t|
      t.text :default_web_description
      t.text :default_email_description
      t.string :name

      t.timestamps
    end
  end
end
