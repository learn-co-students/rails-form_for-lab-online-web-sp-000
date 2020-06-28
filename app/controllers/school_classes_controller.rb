class SchoolClassesController < ApplicationController

  def show
    set_school_classes
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit
    set_school_classes
  end

  def create
    @school_class = SchoolClass.new(school_classes_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def update
    set_school_classes
    @school_class.update(school_classes_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  private

  def set_school_classes
    @school_class = SchoolClass.find(params[:id])
  end

	def school_classes_params(*args)
	  params.require(:school_class).permit(*args)
	end
end
