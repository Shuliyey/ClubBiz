class StudentsController < ApplicationController


  	def like_club
	  	@student = Student.find(session[:user_id])
	  	@event = Event.find(params[:id])
	  	@student.events << @event

  	end

	def unlike_club
	  	@student = Student.find(session[:user_id])
	  	@event = Event.find(params[:id])
	  	@student.events.delete(@event)
  	end

end
