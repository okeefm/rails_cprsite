class PrivilegeLevel < ActiveRecord::Base
	has_and_belongs_to_many :users
	
	def to_s 
		return self.name
	end
end
