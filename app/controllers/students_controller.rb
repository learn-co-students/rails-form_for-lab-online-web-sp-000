class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
    end

    def create
        student = Student.create(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(student)
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        # must find the student first or will update all records
        student = Student.find(params[:id])
        student.update(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(student)
    end
    
end
