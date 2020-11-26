class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end 
  
  def show
    student_finder
  end 
  
  def new
    @student = Student.new
  end 
  
  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end 
  
  def edit
    student_finder
  end 
  
  def update
    student_finder
    @student.update(student_params)
    redirect_to students_path(@student)
  end 
  
  
  private
  
    def student_finder
      @student = Student.find(params[:id])
    end 
  
    def student_params
      params.require(:student).permit(:first_name, :last_name)
    end
end 