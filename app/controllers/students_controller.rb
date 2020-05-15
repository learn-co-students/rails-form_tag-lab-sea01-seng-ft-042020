class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new

  end

  def create
    # byebug
    @student = Student.create(student_params)
      # @student = Student.new
      # @student.first_name = params[:student][:first_name]
    # redirect_to "/students/#{@student.id}"
    # redirect_to student_path(@student)
    redirect_to @student
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
  
end
