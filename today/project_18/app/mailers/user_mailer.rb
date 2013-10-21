class UserMailer < ActionMailer::Base
  default from: "Sedclerk@gmail.com"
  def registration_confirmation(message)
    @messages = message
    attachments["Sedclerk.jpg"] = File.read("#{Rails.root}/public/Sedclerk.jpg")
    mail(:to => "#{message.name} <#{message.email}>", :subject => "Registered")
  end
end
