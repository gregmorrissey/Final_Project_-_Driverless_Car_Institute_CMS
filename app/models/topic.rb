class Topic < ActiveRecord::Base
	belongs_to :tag
	belongs_to :post

end
