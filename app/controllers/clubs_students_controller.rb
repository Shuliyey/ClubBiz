class ClubsStudentsController < ApplicationController

	# Events
  	def like_event 
	  	@student = Student.find(session[:student_id])
	  	@event = Event.find(params[:event_id])
	  	@student.events << @event
  	end

	def unlike_event
	  	@student = Student.find(session[:student_id])
	  	@event = Event.find(params[:event_id])
	  	@student.events.delete(@event)
  	end

  	# Clubs
  	def create #like Club
	  	@student = Student.find(params[:student_id])
	  	@club = Club.find(params[:club_id])
	  	@student.clubs << @club
		redirect_to profile_path(@club.id)
	end

	def destroy #unlike Club
	  	@student = Student.find(params[:student_id])
	  	@club = Club.find(params[:club_id])
	  	@student.clubs.delete(@club)
		redirect_to profile_path(@club.id)
  	end


end
