class SchoolClassesController < ApplicationController
  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.create!(update_or_create)
    redirect_to school_class_path(@schoolclass)
  end

  def show
    @schoolclass = find_class
  end

  def edit
    @schoolclass = find_class
  end

  def update
    @schoolclass = SchoolClass.update(update_or_create)
    redirect_to school_class_path(@schoolclass)
  end

  private

  def find_class 
    SchoolClass.find(params.require(:id))
  end

  def update_or_create
    params.require(:school_class).permit(:title,:room_number)
  end
end
