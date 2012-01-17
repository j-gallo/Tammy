class CreateTaggings < ActiveRecord::Migration
  def self.up
    create_table :taggings do |t|
      t.integer :blog_id
      t.integer :tag_id
      t.string :title

      t.timestamps
    end

    add_index :taggings, :blog_id
    add_index :taggings, :tag_id
  end

  def self.down
    drop_table :taggings
  end
end
