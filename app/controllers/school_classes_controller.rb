class SchoolClassesController < ApplicationController

  def index
    @classes = SchoolClass.all
  end

  def show
    find_class
  end

  def update
    find_class
    @class.update(class_params)

    redirect_to @class
  end

  def edit
    find_class
  end

  def new
    @class = SchoolClass.new
  end

  def create
    @class = SchoolClass.create!(class_params)

    redirect_to @class
  end

  private

  def class_params
    params.require(:school_class).permit(:title, :room_number)
  end

  def find_class
    @class = SchoolClass.find(params[:id])
  end
end