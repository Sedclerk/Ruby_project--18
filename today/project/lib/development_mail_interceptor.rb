class DevelopmentMailInterceptor
 def self.delivering_email(message)
 message.subject = "[#{message.to}] #{message.subject}"
 message.to = "sedclerk@gmail.com"
 end
 end