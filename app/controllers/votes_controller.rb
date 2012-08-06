class VotesController < ApplicationController
	def vote 
		@event = params[:event_id]
		@options = Vote.where(["event_id = (?)", params[:event_id]]).all
		render 'votes/vote'
	end
end