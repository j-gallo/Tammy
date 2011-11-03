require 'digest'

class Admin < ActiveRecord::Base
  
  attr_accessor :password
  attr_accessible :name, :password, :password_confirmation

  validates :name, :presence => true, 
                   :length => { :maximum => 50 },
                   :uniqueness => { :case_sensitive => false }

  validates :password, :presence => true,
                       :confirmation => true,
                       :length => { :within => 6..40 }

  before_save :encrypt_password

  def correct_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end

  def self.authenticate(name, submitted_password)
    admin = find_by_name(name)
    return nil if admin.nil?
    return admin if admin.correct_password?(submitted_password)
  end

  def self.authenticate_with_salt(id, cookie_salt)
    admin = find_by_id(id)
    (admin && admin.salt == cookie_salt) ? admin : nil
  end

  private
    def encrypt_password
      self.salt = make_salt if new_record?
      self.encrypted_password = encrypt(password)
    end

    def encrypt(string)
      secure_hash("#{salt}--#{string}")
    end

    def secure_hash(string)
      Digest::SHA2.hexdigest(string)
    end

    def make_salt
      secure_hash("#{Time.now.utc}--#{password}")
    end
end
