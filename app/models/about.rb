class About < ActiveRecord::Base
	attr_accessible :content

	validates :content, :presence => true
end
