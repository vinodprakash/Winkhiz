class UserMailer < ApplicationMailer
	default from: 'notifications@example.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
  def website_enquiry(user)
    @user = user
    mail(to: "winkhizevents@gmail.com", subject: 'Website Enquiry')
  end
end
