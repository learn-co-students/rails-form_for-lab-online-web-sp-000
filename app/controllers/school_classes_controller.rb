class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end 
  
  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params)
    if @school_class.save
      redirect_to school_class_path(@school_class)
    else
      render :new
    end
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    if @school_class.update(school_class_params)
      redirect_to school_class_path(@school_class)
    else
      render :edit
    end
  end

  private

  def school_class_params
    params.require(:school_class).permit!
  end

end