class StudentsController < ApplicationController
    def index 
        @student = Student.all 
    end 

    def show 
        @student = Student.find(params[:id])
    end 

    def new 
        @student = Student.new 
    end 

    def create 
        @student = Student.new(students_params(:first_name, :last_name))
        @student.save 
        redirect_to student_path(@student)
    end
    
    def update 
        @student = Student.find(params[:id])
        @student.update(students_params(:first_name, :last_name))
        redirect_to students_params(@student)
    end 

    def edit 
        @student = Student.find(params[:id])
    end 

    private 

    def students_params(*args)
        params.require(:student).permit(*args)
    end 
end 