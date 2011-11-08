class Portfolio < ActiveRecord::Base
  has_attached_file :photo

  default_scope :order => "portfolios.created_at DESC"
end
