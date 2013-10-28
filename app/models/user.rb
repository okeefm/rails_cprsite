class User < ActiveRecord::Base

	acts_as_authentic do |c|
		c.login_field = :email
	end
	
	before_save do
		self.phone = self.phone.gsub(/\D/, "")
	end

	attr_accessor :password
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email_confirmation, presence: true, unless: :email_not_changed?
	validates :email, uniqueness: true, confirmation: {unless: :email_not_changed?}, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "Not a valid email address"}
	validates :password, presence: true, length: {minimum: 6, maximum: 25}, confirmation: true, unless: :password_not_changed?
	validates :password_confirmation, presence: true, unless: :password_not_changed?
	validates :phone, presence: true
	validates :address_1, presence: true
	validates :city, presence: true
	
	def email_not_changed?
		return email == self.email
	end
	
	def password_not_changed?
		return (!password || (password == self.password))
	end
end
