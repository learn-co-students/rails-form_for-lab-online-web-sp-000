class StudentsController < ApplicationController
    def new
        @student = Student.new
    end

    def create
        @student = Student.create(s_params)
        redirect_to student_path(@student)
    end

    def show
        s_find
    end

    def edit
        s_find
    end

    def update
        s_find
        @student.update(s_params)
        redirect_to student_path(@student)
    end

    private
    
    def s_find
        @student = Student.find(params[:id])
    end

    def s_params
        params.require(:student).permit(:first_name, :last_name)
    end
end