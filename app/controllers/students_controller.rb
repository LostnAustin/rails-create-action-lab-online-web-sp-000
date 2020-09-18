class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.first = params[:first_name]
    @student.last = params[:last_name]
    @student.save
    redirect_to student_path(@student)
  end

end
