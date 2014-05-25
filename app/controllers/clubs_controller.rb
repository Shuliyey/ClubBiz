class ClubsController < ApplicationController

	def show
	  @club = Club.find(params[:id])
	end

	def index 
		@clubs = Club.all
  	end

  	def index_liked

  	end

	def my_clubs
		@clubs = current_student.clubs
  	end

end
