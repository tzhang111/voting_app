class VotesController < ApplicationController
	def vote 
		@event = Event.find(params[:event_id])
		@options = Vote.where(["event_id = (?)", params[:event_id]]).all
		render 'votes/vote'
	end
	
	def update
		Vote.update_all "number=number+1", :id => params[:vote_id]
		render 'votes/update'			
	end
end