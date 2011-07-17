class UserMailer < ActionMailer::Base
  default :from => "machspeeds@gmail.com"
  
  def registration_confirmation(user)
	  recipients user.email
	  subject    "Thank you for Registering"
	  body       :user => user
  end
end
