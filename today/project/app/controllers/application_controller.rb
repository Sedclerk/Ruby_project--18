class ApplicationController < ActionController::Base
    before_filter :visit


  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  private
   def visit
    	
    end
#
#before_filter :visit.track
#def visit.track
#	 @message = Message.find_or_create_by_url(request.url)
#	 Message.increment_counter(:count, @message.id)
end