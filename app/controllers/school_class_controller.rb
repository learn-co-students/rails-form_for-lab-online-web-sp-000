class SchoolClassController < ApplicationController

 def index
   @schoolClasses = SchoolClasses.all
 end 
 
  def new 
  end 

  def create
    @schoolClass = SchoolClass.create(:title => params[:title], :room_number => params[:room_number])
    
    redirect_to new school_class_path
  end 
  
  def show 
    @schoolClass = SchoolClass.find(params[:id])
  end 
  
  def update
      @schoolClass = SchoolClass.find(params[:id])
  end 
  
  def edit #to render the form
      @schoolClass = SchoolClass.find(params[:id])
  end

end
