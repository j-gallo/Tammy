class Blog < ActiveRecord::Base
  attr_accessible :title, :content

  has_many :taggings, :dependent => :destroy
  has_many :tags, :through => :taggings

  validates :content, :presence => true
  validates :title,   :presence => true

  default_scope :order => 'blogs.created_at DESC'

  #searches through the blogs and pulls out the matches, paginating to 10 per page
  def self.search(search, page)
	   paginate(:page => page, :per_page => 10).find(:all, :conditions => ['content LIKE ?', "%#{search}%"])
  end
end
