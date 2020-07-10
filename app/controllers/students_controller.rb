class StudentsController < ApplicationController

  def new
    @student = Student.new
  end


  private 

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
