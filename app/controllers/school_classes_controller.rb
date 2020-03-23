class SchoolClassesController < ApplicationController
  
  def new
    @school_class = SchoolClass.new
  end

  def create
    school_class = SchoolClass.create(post_params)
    redirect_to school_class_path(school_class)
  end

  def show
    @school_class = set_sc
  end

  def edit
    @school_class = set_sc
  end

  def update
    school_class = set_sc
    school_class.update(post_params)
    redirect_to school_class_path(school_class)
  end

  private

  def post_params
    params.require(:school_class).permit(:title, :room_number)
  end

  def set_sc
    SchoolClass.find(params[:id])
  end
end