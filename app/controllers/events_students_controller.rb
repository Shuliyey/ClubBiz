class EventsStudentsController < ApplicationController

	# Events
  	def create #like event 
	  	@student = Student.find(params[:student_id])
	  	@event = Event.find(params[:event_id])
	  	@student.events << @event
		redirect_to @event
  	end

	def destroy #unlike event
	  	@student = Student.find(params[:student_id])
	  	@event = Event.find(params[:event_id])
	  	@student.events.delete(@event)
		redirect_to @event
  	end

end
