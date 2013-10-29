class Course < ActiveRecord::Base
	belongs_to :organization
	has_and_belongs_to_many :instructors, class_name: "User"
	#has_and_belongs_to_many :attendees, class_name: "User"
	
	validates :name, presence: true
	validates :start, presence: true
	validates :end, presence: true
	validates :class_location, presence: true
	validates :organization_id, presence: true
	validates :max_capacity, presence: true, numericality: {only_integer: true, greater_than: 0}
	
end
