class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]

  def new
    @student = Student.new
  end

  def show
    
  end


  def create
    @student = Student.create(student_params(params[:student].keys))
    redirect_to @student
  end

  def edit
  end

  def update
    @student.update(student_params(params[:student].keys))
    redirect_to @student
  end 

  private
    def student_params(*args)
      params.require(:student).permit(*args)
    end
    def set_student
      @student = Student.find(params[:id])
    end
end
