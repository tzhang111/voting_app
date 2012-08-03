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
  		puts params
  		@event = Event.new(params[:event])
      @vote = @event.votes.build(params[:vote])
  		if @event.save
  		    # flash message here
  		else
  		   @title = "New Event"
  		   render new
  		end
  	end
end