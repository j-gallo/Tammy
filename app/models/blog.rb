class Blog < ActiveRecord::Base
  attr_accessible :title, :content

  has_many :taggings
  has_many :tags, :through => :taggings

  validates :content, :presence => true
  validates :title,   :presence => true

  default_scope :order => 'blogs.created_at DESC'
end
