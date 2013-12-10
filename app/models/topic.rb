class Topic < ActiveRecord::Base
	belongs_to :tag
	belongs_to :post

	validates :tag, :presence => true	
	validates :post, :presence => true

 	validates_uniqueness_of :post_id, :scope => :tag_id
end
