class StudentsController < ApplicationController
	def new
		@student = Student.new
	end

	def create
		@student = Student.new(post_params(:first_name, :last_name))
		@student.save
		redirect_to student_path(@student)
	end

	def show
		find_student
	end

	def edit
		find_student
	end

	def update
		find_student
		@student.update(post_params(:first_name, :last_name))
		redirect_to student_path(@student)
	end

	private

	def find_student
		@student = Student.find(params[:id])
	end

	def post_params(*args)
		params.require(:student).permit(*args)
	end


end
