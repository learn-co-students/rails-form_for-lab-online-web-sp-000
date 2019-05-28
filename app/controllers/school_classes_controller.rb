class SchoolClassesController < ApplicationController
before_action :set_school_class, only: [:show, :update, :edit, :delete]

  def index
    @school_classes = SchoolClass.all
  end

  def show
  end

  def new
  end

  def create
    @school_class = SchoolClass.new(post_params)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def edit
  end

  def update
    @school_class.update(post_params)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def delete
  end

  private

  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end

  def post_params
    params.require(:school_class).permit(:title, :room_number)
  end

end
