class Post < ActiveRecord::Base
	has_many :comments
	has_many :tags, through: :topics
	has_many :topics
	belongs_to :user
	has_many :favorites





end
