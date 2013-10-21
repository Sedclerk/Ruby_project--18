class MessagesController < ApplicationController

  before_action :set_message, only: [:show, :edit, :update, :destroy]
  
  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.all
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
    @messages = Message.find(params[:id])
    #Visit.track(@messages, request.remote_ip)
  end

  # GET /messages/new
  def new
    @messages = Message.new
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.json
  def create
    @messages = Message.new(message_params)

    respond_to do |format|
      if @messages.save
        UserMailer.registration_confirmation(@messages).deliver
        format.html { redirect_to @messages, notice: 'Message was successfully created.' }
        format.json { render action: 'show', status: :created, location: @messages }
      else
        format.html { render action: 'new' }
        format.json { render json: @messages.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  def update
    respond_to do |format|
      if @messages.update(message_params)
        format.html { redirect_to @messages, notice: 'Message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @messages.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @messages.destroy
    respond_to do |format|
      format.html { redirect_to messages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @messages = Message.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:name, :last, :name, :email, :phone, :message)
    end
end