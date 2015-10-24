class Lesson < ActiveRecord::Base

	has_many :posts
	
	belongs_to :subject

end
