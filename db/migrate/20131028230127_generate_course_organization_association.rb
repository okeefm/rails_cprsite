class GenerateCourseOrganizationAssociation < ActiveRecord::Migration
  def change
	create_table :course_organizations do |t|
      t.belongs_to :organization
      t.belongs_to :course
    end
  end
end
