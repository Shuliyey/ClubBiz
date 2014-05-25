class ReservationsController < ApplicationController

def create #reserve a ticket for event
	@student = Student.find(current_student.id)
  	@event = Event.find(params[:event_id])
	@reservation = Reservation.new
	@student.reservations << @reservation
	@event.reservations << @reservation
	redirect_to @event
end

def destroy #remove a reservation for an event
	@student = Student.find(current_student.id)
	@event = Event.find(params[:event_id])
	@reservation = Reservation.find(params[:event_id])
	@student.reservations.delete(@reservation)
	redirect_to @event
end

private

end
