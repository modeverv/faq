class User < ActiveRecord::Base
  has_secure_password
  
  attr_accessible :name, :password_digest, :password, :password_confirmation
  attr_protected :isadmin
  
  validates_presence_of :password, :on => :create

  before_save :create_remember_token

private
  def create_remember_token
    self.remember_token=SecureRandom.urlsafe_base64
  end  
  
end
