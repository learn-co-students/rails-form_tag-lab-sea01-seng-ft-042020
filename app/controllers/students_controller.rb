class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create 
    # create a student object
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    #redirect back to that student object
    redirect_to (student_path(@student))
  end

  def new

  end
end
