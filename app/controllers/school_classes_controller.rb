class SchoolClassesController < ApplicationController
  #before_action :set_school_class, only: [:show, :edit, :update, :destroy]

  # GET /school_classes
  # GET /school_classes.json
  def index
    @school_classes = SchoolClass.all
  end

  # GET /school_classes/1
  # GET /school_classes/1.json
  def show
    @school_class = SchoolClass.find(params[:id]) 
  end

  # GET /school_classes/new
  def new
    @school_class = SchoolClass.new
    render :action => "new"
  end

  # GET /school_classes/1/edit
  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def create
    @school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end
   
  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end
   

  # DELETE /school_classes/1
  # DELETE /school_classes/1.json
  def destroy
    @school_class.destroy
    respond_to do |format|
      format.html { redirect_to school_classes_url, notice: 'School class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
 
  def post_params(*args)
    params.require(:school_classes).permit(*args)
  end
end