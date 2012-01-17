class Tag < ActiveRecord::Base
	attr_accessible :title

	has_many :taggings
	has_many :blogs, :through => :taggings
	validates :title,   :presence => true
end
