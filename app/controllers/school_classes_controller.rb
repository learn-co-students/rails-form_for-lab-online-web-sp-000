class SchoolClassesController < ApplicationController
   def new 
      @school_class = SchoolClass.new
   end 

   def create 
      @school_class = SchoolClass.create(
         params.require(:school_class).permit(:title, :room_number)
      )
      # @school_class.title = params[:school_class][:title]
      # @school_class.room_number = params[:school_class][:room_number]
      @school_class.save 
      redirect_to school_class_path(@school_class)
   end 

   def show 
      @school_class = SchoolClass.find(params[:id])
   end 

   def edit 
      @school_class = SchoolClass.find(params[:id])
   end 

end
