class UserMailer < ActionMailer::Base
  def registration_confirmation(message)
  	@message = message
  	attachments["TEAM.jpg"] = File.read("#{Rails.root}/public/TEAM.jpg")
    mail(:to => "#{message.name} <#{message.email}>", :subject => "Registered", :from => "sedclerk@gmail.com")
  end
end
