class ApplicationController < ActionController::Base
  before_filter :visit_track

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  private
   def visit_track
    Visit.create(ip_address: request.remote_ip)
    #@visit_stats = num_of_visits.increment
   end

 #  def remote_ip
 #   if request.remote_ip =! '127.0.0.1'
  #     puts ""
  #  else
  #    request.remote_ip
  #  end
 # end
#end
end
