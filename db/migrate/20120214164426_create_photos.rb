class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.has_attached_file :photo

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
