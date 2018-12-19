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
    @student = Student.create(strong_params)
    redirect_to student_path(@student)
  end

  def edit    
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(strong_params)
    redirect_to student_path(@student)
  end

  private

  def strong_params
    params.require(:student).permit(:first_name, :last_name)
  end
end