class AddUrlToPortfolios < ActiveRecord::Migration
  def self.up
	  add_column :portfolios, :url, :string
  end

  def self.down
	  remove_column :portfolios, :url
  end
end
