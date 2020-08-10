class StudentController < ApplicationController 


def new
@student = Student.new
end

def create
    @student=Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
end

def show
    @student = Student.find(params[:id]
end

def edit
    @student=student.find(params[:id])
end

def update
@student = Student.find(params[:id])
@student = Student.Update(post_params)
redirect_to student_path(@student)
end

private

def student_params
    params.require(:student).permit(:first_name, :last_name)
end

end 