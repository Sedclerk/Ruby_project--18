class ApplicationController < ActionController::Base
before_filter :record_visit
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 def record_visit
      #impressionable_class = controller_name.gsub("Controller","").constantize
      #impressionable_instance = impressionable_class.find(params[:id])
      #impressionable_instance.impressions.create(ip_address:request.remote_ip,user_id:current_user.id)
 end
end
