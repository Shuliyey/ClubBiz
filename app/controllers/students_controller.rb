class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
  end

  def index 
    @students = Student.all
  end

  def index_liked

  end
  
  def grant_permission
  end
end