class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to @student
  end

  def show
    @student = Student.find(params[:id])
  end
  
  private

    def student_params
      params.require(:student).permit(:first_name, :last_name)
    end

end


{"utf8"=>"✓",
"authenticity_token"=>
 "VAO8jAncf/4B9Izl+mS4y11QT0hQUWzvEKy4E18MtVxD607LI+bL5bNFcDaZPvTzm9giKg4VIjmGu9UoRmQyMw==",
"student"=>{"first_name"=>"B", "last_name"=>"BBB"},
"commit"=>"Create Student",
"controller"=>"students",
"action"=>"create"}
