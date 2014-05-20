class StudentsController < ApplicationController

	# Events
  	def like_event
	  	@student = Student.find(session[:user_id])
	  	@event = Event.find(params[:id])
	  	@student.events << @event
  	end

	def unlike_event
	  	@student = Student.find(session[:user_id])
	  	@event = Event.find(params[:id])
	  	@student.events.delete(@event)
  	end

  	# Clubs
  	def like_club
	  	@student = Student.find(session[:user_id])
	  	@club = Club.find(params[:id])
	  	@student.clubs << @club
  	end

	def unlike_club
	  	@student = Student.find(session[:user_id])
	  	@club = Club.find(params[:id])
	  	@student.clubs.delete(@club)
  	end


end
