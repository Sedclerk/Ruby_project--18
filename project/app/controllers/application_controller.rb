class ApplicationController < ActionController::Base
    before_filter :record_click

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  private
    def record_click
       redirect_to(:root) && return if @offline == 'true'
    end
end
