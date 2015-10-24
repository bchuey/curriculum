class Category < ActiveRecord::Base

	has_many :subjects
	has_many :posts

	belongs_to :grade
end
