class SchoolClassesController < ApplicationController
  def index
    @class = SchoolClass.all
  end

  def new
    @class = SchoolClass.new
  end

  def create
	  @class = SchoolClass.new(class_params(:title, :room_number))
	  @class.save
	  redirect_to class_path(@class)
  end
  
  def update
	  @class = SchoolClass.find(params[:id])
	  @class.update(class_params(:title, :room_number))
	  redirect_to class_path(@class)
	end

  def show
    @class = SchoolClass.find(params[:id])
  end

  def edit
    @class = SchoolClass.find(params[:id])
  end

  private
 
	def class_params(*args)
		params.require(:schoolclass).permit(*args)
	end
end