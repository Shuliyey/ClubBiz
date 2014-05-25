class ClubsController < ApplicationController

	def show
	  @club = Club.find(params[:id])
	  @events = Event.where(:club_id => params[:id])
	end

	def index 
		@clubs = Club.all
	end

  	def index_liked

  	end

end
