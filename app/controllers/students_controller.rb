class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
  end

  def index 
    @students = Student.all
  end

  def index_liked

  end
  
  def admin_permission
    @students = Student.where(:admin => FALSE)
  end
  
  def grant_permission
    @success = FALSE
    if ( student_signed_in?  && current_student.admin)
      id = params[:id]
      student = Student.find(id)
      student.admin = TRUE
      student.save
      @success = TRUE
    end
  end
end