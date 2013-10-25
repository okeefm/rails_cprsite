class CourseType < ActiveRecord::Base
	validates :name, presence: true, length: {minimum: 3}
	validates :default_web_description, presence: true
end
