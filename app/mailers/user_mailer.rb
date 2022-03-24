class UserMailer < ApplicationMailer
	layout 'awesome'
	default from: email_address_with_name('notification@example.com', 'Example Company Notifications')
	
  def welcome_email
   @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email,
         subject: 'Welcome to My Awesome Site',
         template_path: 'notifications',
         template_name: 'another')
  end
end
