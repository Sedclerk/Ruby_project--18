class ApplicationController < ActionController::Base
 #before_filter :visit_track
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
#before_filter :count
 #def visit_track
    #Visit.create(ip_address: request.remote_ip)
    #@visit_stats = num_of_visits.increment
   #end
#def count
#impressionable_instance = impressionable_class.find(params[:id])
#impressions.create(ip_address:request.remote_ip)
#end
end
