class User < ActiveRecord::Base
	has_many :posts
	has_many :documents
	has_many :reviews
	has_many :votes

	belongs_to :role

  	has_secure_password

  	has_secure_password
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :first_name, :last_name, presence: true
	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
	validates :password, length: {minimum: 6}

	before_save do
		self.email.downcase!
	end
end
