class SchoolClassesController < ApplicationController
  def new; end

  def create
    @schoolclass = SchoolClass.create!(params.require(:school_class).permit(:title,:room_number))
    redirect_to school_class_path(@schoolclass)
  end

  def show; end

  def edit; end

  def update; end
end
