class StudentsController < ApplicationController

  def new
    @student = Students.new
  end

  def create
    @student = Students.new(post_params(:title, :room_number))
    @student.save
    redirect_to student_path(@student)
  end

  def show
    @student = Students.find(params[:id])
  end

  def update
    @student = Students.find(params[:id])
    @student.update(student_path(:title, :room_number))
    redirect_to student_path(@student)
  end

  def edit
    @student = Students.find(params[:id])
  end

end
