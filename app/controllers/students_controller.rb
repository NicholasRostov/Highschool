class StudentsController < ApplicationController

  def new
    @student = Student.new()
  end

  def create
    @student = Student.new(first_name: params[:first_name], last_name: params[:last_name])
    @student.save
   redirect_to "/students/#{@student.id}"
  end

  def index
    @students = Student.all()
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.assign_attributes(first_name: params[:first_name], last_name: params[:last_name])
    @student.save
    redirect_to "/students/#{@student.id}"
  end

  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destroy
    redirect_to "/students"
  end

end
