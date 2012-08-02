class EventsController < ApplicationController
	def new
		@event=Event.new
		@title="New Event"
	end
	
	def index
		@events = Event.all
		@title = "Events"
  	end
  	
  	def create
  		@event = Event.new(params[:event])
  		if @event.save
  		    # flash message here
  		else
  		   @title = "New Event"
  		   render new
  		end
  	end
end