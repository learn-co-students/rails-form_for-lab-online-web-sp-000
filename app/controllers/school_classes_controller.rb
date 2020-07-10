class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create 
    @school_class = SchoolClass.create(school_class_params)
    redirect_to student_path(@student)
  end

  private 
  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
