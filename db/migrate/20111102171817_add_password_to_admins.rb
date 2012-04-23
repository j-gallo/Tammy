class AddPasswordToAdmins < ActiveRecord::Migration
  def self.up
    add_column :admins, :encrypted_password, :string
  end

  def self.down
    remove_column :admins, :encrypted_password
  end
end
