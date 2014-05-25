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
	@reservation = Reservation.find(params[:id])
	@event = Event.find(@reservation.event_id)
	@student.reservations.delete(@reservation)
	@event.reservations.delete(@reservation)
	redirect_to @event
end

private

def reservation_params
      params.require(:event_id, :student_id)
end

end
