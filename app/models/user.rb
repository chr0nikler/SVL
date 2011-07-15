class User < ActiveRecord::Base
	attr_accessor :email, :username, :password, :password_confirmation
end
