class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.create!(update_or_create)
    redirect_to student_path(@student)
  end

  def show
    @student = find_student
  end

  def edit
    @student = find_student
  end

  def update
    @student = Student.update(update_or_create)
    redirect_to student_path(@student)
  end

  private

  def find_student
    Student.find(params.require(:id))
  end

  def update_or_create
    params.require(:student).permit(:first_name, :last_name)
  end

end
