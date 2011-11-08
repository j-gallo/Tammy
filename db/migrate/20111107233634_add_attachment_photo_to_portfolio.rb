class AddAttachmentPhotoToPortfolio < ActiveRecord::Migration
  def self.up
    add_column :portfolios, :photo_file_name, :string
    add_column :portfolios, :photo_content_type, :string
    add_column :portfolios, :photo_file_size, :integer
    add_column :portfolios, :photo_updated_at, :datetime
  end

  def self.down
    remove_column :portfolios, :photo_file_name
    remove_column :portfolios, :photo_content_type
    remove_column :portfolios, :photo_file_size
    remove_column :portfolios, :photo_updated_at
  end
end
