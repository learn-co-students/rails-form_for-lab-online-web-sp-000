class StudentsController < ApplicationController

def new
  @student = Student.new
end


def create
  @student = Student.new
  @stident.first_name = params[:first_name]
  @student.last_name = params[:last_name]
  @student.save
  redirect_to student_path(@student)
end

def show
  @student = Student.find(params[:id])
end

def edit
  @student = Student.find(params[:id])
end

def update
  @student= Student.find(params[:id])
  @student.update(first_name: params[:student][:first_name], desription: params[:student][:last_name])
  @student.save
  redirect_to student_path(@student)
end


end
