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
  		@events = Event.all
  		render 'events/index'
  	end
	
	def choose
		@events = Event.all
		if params[:event_ids] != nil
			Event.update_all "choose=1", :id => params[:event_ids]
			Event.update_all "choose=0", ["id not in (?)", params[:event_ids]]
		else
			Event.update_all "choose=0"
		end
	end
	
	def to_be_voted
	     @events = Event.where(["choose = ?", 1]).all
	     render 'votes/index'
	end
end