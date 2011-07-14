class User < ActiveRecord::Base
  attr_accessor :username, :password, :email, :password_confirmation
  attr_accessible :username, :password, :email, :password_confirmation 
  validates :username, :presence => true
  validates :password, :presence => true

   
end
