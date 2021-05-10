class StudentsController < ApplicationController
  before_filter :find_student, only: [:show, :edit, :update]
  def show
  end

  def new
    @student = Student.new
  end

  def create
    # byebug
    @student = Student.create(student_params(:first_name, :last_name))
    redirect_to @student
  end

  def edit
  end

  def update
    @student = Student.update(student_params(:first_name, :last_name))
    redirect_to @student
  end

  private

  def student_params(*args)
    params.require(:student).permit(args)
  end

  def find_student
    @student = Student.find(params[:id])
  end
end
