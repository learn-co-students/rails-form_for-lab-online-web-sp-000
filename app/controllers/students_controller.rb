class StudentsController < ApplicationController
  before_action :find_student, only: [:edit, :show, :update]

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "You successfully created a student"
      redirect_to @student
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def edit
  end
  
  def update
      if @student.update(student_params)
        flash[:success] = "The student was successfully updated"
        redirect_to @student
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  
  private

  def find_student
    @student = Student.find(params[:id])
  end
  
  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
