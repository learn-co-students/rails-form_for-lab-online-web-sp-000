class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params)
    @school_class.save
    redirect_to @school_class
  end

  private

    def school_class_params
      params.require(:school_class).permit(:title, :room_number) #comment
    end

end
