class StudentsController < ApplicationController
before_action :set_student, only: [:show, :update, :edit]

  def index
    @students = Student.all
  end

  def show
  end

  def new
  end

  def create
    @student = Student.new(post_params)
    @student.save
    redirect to student_path(@student)
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def post_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
