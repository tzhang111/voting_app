class EventsController < ApplicationController
	def index
		@events = Event.all
		@title = "Events"
  end

end