class User < ActiveRecord::Base

  attr_accessible :email, :username, :password, :password_confirmation, :student
  validates :password_confirmation, :presence => true
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :username, :presence => true
  validates :email, :presence => true,
	           :format => { :with => email_regex },
                   :uniqueness => { :case_sensitive => false }
  validates :password, :presence => true
  def has_password?(submitted_password)
    submitted_password == password
  end

  def self.authenticate(username, submitted_password)
    user = find_by_username(username)
    return nil  if user.nil?
    return user if user.has_password?(submitted_password)
  end
end

