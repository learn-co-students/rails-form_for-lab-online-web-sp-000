class StudentsController < ApplicationController

	def show
		@students = Students.find(params[:id])
	end

	def new
		@students = Students.new
	end

	def edit
	  @students = Students.find(params[:id])
	end

	def create
		@students = Students.new(students_params)
		@students.save
		redirect_to students_path(@students)
	end

	def update
		@students = Students.find(params[:id])
		@students.update(students_params)
		redirect_to students_path(@students)
	end

	  private

    def students_params
        params.require(:students).permit!
    end
end
