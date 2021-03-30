class SchoolClassesController < ApplicationController
  before_action :find_school_class, only: [:edit, :show, :update]

  def show
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params)
    if @school_class.save
      flash[:success] = "You successfully created a school class"
      redirect_to school_class_path(@school_class)
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def edit
  end
  
  def update
      if @school_class.update(school_class_params)
        flash[:success] = "The school class was successfully updated"
        redirect_to @school_class
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  
  private

  def find_school_class
    @school_class = SchoolClass.find(params[:id])
  end
  
  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
