class AddNameUniquenessIndex < ActiveRecord::Migration
  def self.up
    add_index :admins, :name, :unique => true
  end

  def self.down
    remove_index :admins, :name
  end
end
