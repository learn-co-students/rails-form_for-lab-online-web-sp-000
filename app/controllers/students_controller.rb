class StudentsController < ApplicationController

    def create
		@student = Student.create(post_params(:student, :first_name, :last_name))
		redirect_to student_path(@student)
    end
    
    def new
        @student = Student.new
        render 'form'
    end

    def edit
        @student = Student.find(params[:id])
        render 'form'
    end

    def show
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.update(post_params(:student, :first_name, :last_name))
		redirect_to student_path(@student)
    end

end