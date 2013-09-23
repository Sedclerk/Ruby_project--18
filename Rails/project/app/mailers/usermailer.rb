class Usermailer < ActionMailer::Base
  default from: "notifications@JapaneseVehicules.com"
  def welcome_email(user)
    @user = user
    @url  = 'http://JapaneseVehicules.com/login'
    mail(to: @user.email, subject: 'Welcome to My Project')
  end
end
