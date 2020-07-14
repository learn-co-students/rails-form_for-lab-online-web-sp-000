class StudentsController < ApplicationController

	def create
	  @s = Student.new
	  @s.first_name = params[:student][:first_name]
	  @s.last_name = params[:student][:last_name]
	  @s.save
	  redirect_to student_path(@s)
	end

	def show
		@s = Student.find(params[:id])
	end

	def new
	end

	def edit
		@s = Student.find(params[:id])
	end

	def update
		@s = Student.find(params[:id])
	  @s.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
	  redirect_to student_path(@s)
	end

end
