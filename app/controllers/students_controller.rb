class StudentsController < ApplicationController

	def liked
		@clubs = current_student.events
  	end


end
