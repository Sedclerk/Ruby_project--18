class PostsController < ApplicationController
  def index
   
 end


def show
    @message = Message.find(params[:id])
    Visit.track(@message, request.remote_ip)
  end



 def add_message
 end  

 def save_message
 end

 def send_message
 
 end
end
