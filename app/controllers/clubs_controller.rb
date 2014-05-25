class ClubsController < ApplicationController

	def show
	  @club = Club.find(params[:id])
	  date_from = Time.zone.now.beginning_of_day
	  date_to = date_from + 4.week
	  @events = Event.where(:club_id => params[:id], :when=> date_from..date_to)
	end

	def index 
		@clubs = Club.all
	end

  	def index_liked

  	end

end
