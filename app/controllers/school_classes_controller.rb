class SchoolClassesController < ApplicationController
  before_action :set_school_class, only: [:show, :edit, :update]
  
  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(class_params(params[:school_class].keys))
    redirect_to @school_class
  end

  def show
  end

  def edit
  end

  def update
    @school_class.update(class_params(params[:school_class].keys))
    redirect_to @school_class
  end

  private
    def class_params(*args)
      params.require(:school_class).permit(*args)
    end

    def set_school_class
      @school_class = SchoolClass.find(params[:id])
    end
end
