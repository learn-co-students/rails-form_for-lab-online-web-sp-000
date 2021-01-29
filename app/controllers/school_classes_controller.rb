class SchoolClassesController < ApplicationController
  
 def index
   @schoolClasses = SchoolClasses.all
 end 
 
  def new 
    @class = SchoolClasses.new
  end 

  def create
    @schoolClass = SchoolClass.create(:title => params[:title], :room_number => params[:room_number])
    
    redirect_to school_classes_path
  end 
  
  def show 
    @schoolClass = SchoolClasses.find(params[:id])
  end 
  
  def update
      @schoolClass = SchoolClasses.find(params[:id])
  end 
  
  def edit #to render the form
      @schoolClass = SchoolClasses.find(params[:id])
  end

end
