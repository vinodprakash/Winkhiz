class HomeController < ApplicationController
  skip_before_filter :verify_authenticity_token 
  def index
  end

  def services
  end

  def gallery
  end

  def about_us
  end

  def contact
  end
  def customer_contact
    customer_name = params['Name']
    email = params['Email']
    mobile = params['Mobile']
    subject = params['Subject']
    message = params['Message']
    @user = User.create(name: customer_name, email: email, mobile: mobile, subject: subject, message: message)
    UserMailer.welcome_email(@user).deliver_later
    UserMailer.website_enquiry(@user).deliver_later
    redirect_to '/contact' and return
  end
end
