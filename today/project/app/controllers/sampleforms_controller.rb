class SampleformsController < ApplicationController

def index
	@Sampleforms = Sampleform.all
end

def new
	@sampleform = Sampleform.new
end

def create
	@sampleform = Sampleform.new(params[:sampleform])
	if @sampleform.save
		redirect_to sampleforms_path
	end
end

def destroy
	@sampleform = Sampleform.find_by_id(params[:id])
    if @sampleform.destroy
    	redirect_to sampleforms_path
    end
end
end