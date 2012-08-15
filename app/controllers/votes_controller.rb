class VotesController < ApplicationController
@@ipList=[] 
	def vote 
		@event = Event.find(params[:event_id])
		@options = Vote.where(["event_id = (?)", params[:event_id]]).all
		render 'votes/vote'
	end
	
	def update
	
	@@ipList.each do |item|
		if (item == request.remote_ip)
			render'votes/revote_error'
			return
		end
	end
	
		@@ipList << request.remote_ip 
	
		Vote.update_all "number=number+1", :id => params[:vote_id]
    @event = Event.find(Vote.find(params[:vote_id]).event_id)
    @options = Vote.where(["event_id=(?)", @event.id]).all
		render 'votes/update'			
	end
end
