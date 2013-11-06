       ActionMailer::Base.smtp_settings = {  
      :address              => ENV["smtp.gmail.com"],  
      :port                 => ENV['587'].to_i,  
      :domain               => ENV["gmail.com"],  
      :user_name            => ENV["sedclerk@gmail.com"],  
      :password             => ENV["sedclerk13"],  
      :authentication       => "plain",  
      :enable_starttls_auto => true  
    }  
    ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
    ActionMailer::Base.default_url_options[:host] = "localhost:3000" 
