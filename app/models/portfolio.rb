class Portfolio < ActiveRecord::Base
  validates :photo_file_name, :presence => true

  has_attached_file :photo, :styles => {:medium => "500x500", :thumb => "150x150" }

  default_scope :order => "portfolios.created_at DESC"
end
