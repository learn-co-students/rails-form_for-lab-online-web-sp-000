class SchoolClassController < ApplicationController

  def new 
  end 

  def create
    @class = SchoolClass.create(:title => params[:title], :room_number => params[:room_number])
  end 
  
  def show 
  end 
  
  def update 
  end 
  
  def edit #to render the form
  end

end
