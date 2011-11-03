class Blog < ActiveRecord::Base
  attr_accessible :title, :content

  validates :content, :presence => true
  validates :title,   :presence => true

  default_scope :order => 'blogs.created_at DESC'
end
