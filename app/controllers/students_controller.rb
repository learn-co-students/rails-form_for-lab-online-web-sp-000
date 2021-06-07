class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]


  def new
    @student = Student.new
  end

  def edit
    set_student
  end

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end

  def show
    set_student
  end


  def update
    set_student
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
