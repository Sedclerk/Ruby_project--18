class UserMailer < ActionMailer::Base
  
  def registration_confirmation(message)
  	@message = message 
  	attachments["Sedclerk.jpg"] = File.read("#{Rails.root}/public/Sedclerk.jpg")
    mail(:to => "#{message.name} <#{message.email}>", :subject => "Registered", :from => "sedclerk@gmail.com")
  end
end
