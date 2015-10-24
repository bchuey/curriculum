class Subject < ActiveRecord::Base

	has_many :lessons
	has_many :posts

	belongs_to :category

end
