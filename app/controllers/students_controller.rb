class StudentsController < ApplicationController

   def index
     @student = Student.all
   end 
 
  def new 
  end 

  def create
    @student = Student.create(:first_name => params[:student][:first_name], :last_name => params[:student][:room_number])
    
    redirect_to new student_path
  end 
  
  def show 
    @schoolClass = Student.find(params[:id])
  end 
  
  def update
      @schoolClass = Student.find(params[:id])
      
      redirect_to student_path(@student)
  end 
  
  def edit #to render the form
      @schoolClass = Student.find(params[:id])
  end
  
end
