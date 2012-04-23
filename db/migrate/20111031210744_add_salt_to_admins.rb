class AddSaltToAdmins < ActiveRecord::Migration
  def self.up
    add_column :admins, :salt, :string
  end

  def self.down
    remove_column :admins, :salt
  end
end
