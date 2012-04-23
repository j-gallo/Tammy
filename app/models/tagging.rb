class Tagging < ActiveRecord::Base
	belongs_to :blog
	belongs_to :tag

	validates :title, :presence => true
end
