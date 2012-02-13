class AddYearToPortfolio < ActiveRecord::Migration
  def self.up
    add_column :portfolios, :year, :integer
  end

  def self.down
    remove_column :portfolios, :year
  end
end
