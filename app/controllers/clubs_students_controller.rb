class ClubsStudentsController < ApplicationController

  	# Clubs
  	def create #like Club
	  	@student = Student.find(current_student.id)
	  	@club = Club.find(params[:club_id])
	  	@student.clubs << @club
		redirect_to profile_path(@club.id)
	end

	def destroy #unlike Club
	  	@student = Student.find(current_student.id)
	  	@club = Club.find(params[:club_id])
	  	@student.clubs.delete(@club)
		redirect_to profile_path(@club.id)
  	end


end
