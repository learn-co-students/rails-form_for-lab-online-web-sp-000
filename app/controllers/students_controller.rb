class StudentsController < ApplicationController
    def index 
        @students = Student.all
    end

    def show
        @student = student_finder
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params(:first_name, :last_name))
        @student.save
        redirect_to student_path(@student)
    end

    def edit
        @student = student_finder
    end

    def update
        @student = student_finder
        @student.update(student_params(:first_name, :last_name))
        redirect_to student_path(@student)

    end

    private
    
    def student_params(*args)
        params.require(:student).permit(*args)
    end

    def student_finder
        Student.find(params[:id])
    end



end
