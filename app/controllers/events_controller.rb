class EventsController < ApplicationController
	def new
		@event=Event.new
    @vote=Vote.new
		@title="New Event"
	end
	
	def index
		@events = Event.all
		@title = "Events"
  	end
  	
  	def create
  		@event = Event.new(params[:event])
  		@event.save
  		params[:vote][:options].split("####").each do |o|
  		@vote = @event.votes.build(:option => o)
  		@vote.save
  		end
      
  		#if @event.save
  		    # flash message here
  		#else
  		#   @title = "New Event"
  		#   render new
  		#end
  	end
end