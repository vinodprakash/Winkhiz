class UserMailer < ApplicationMailer
	default from: 'winkhizevents@gmail.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://winkhiz.com'
    mail(to: @user.email, subject: 'Thanks you for contacting us !')
  end
  def website_enquiry(user)
    @user = user
    mail(to: "winkhizevents@gmail.com", subject: 'Website Enquiry')
  end
end
