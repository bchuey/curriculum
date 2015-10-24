class Post < ActiveRecord::Base

	has_many :votes
	has_many :reviews
	has_one :document
	
	belongs_to :user
	belongs_to :grade
	belongs_to :category
	belongs_to :subject
	belongs_to :lesson
	
end
