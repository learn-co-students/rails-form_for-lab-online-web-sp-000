class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]

  def new
    @student = Student.new
  end

  def show
    
  end


  # def create
  #   @student.create(student_params[:student].keys)
  #   redirect_to @student
  # end

  def edit
  end

  def update
  end

  private
  #   def student_params(*args)
  #     params.require(:student).permit(*args)
  #   end
    def set_student
      @student = Student.find(params[:id])
    end
end
