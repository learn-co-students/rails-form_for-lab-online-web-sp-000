class StudentsController < ApplicationController

    def index
    end 

    def show 
        @student = Student.find(params[:id])
    end 

    def new 
        @student = Student.new
    end 

    def create
        @student = Student.create(student_params)
        #Don't forget to use create, not new, or it won't automatically save
        redirect_to student_path(@student)
    end 

    def edit
        @student = Student.find(params[:id])
    end 

    def update
        @student = Student.find(params[:id])
        @student.update(student_params)
        @student.save
        redirect_to student_path(@student)
    end 

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end 
end 