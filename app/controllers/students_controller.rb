class StudentsController < ApplicationController
    #get for a html form
    def new 
        @student = Student.new
    end 

    #post from html form rendered in new
    def create 
        @student = Student.new(student_params)
        @student.save 
        redirect_to student_path(@student)
    end 

    #get to an individual piece of content at the url student/1 (no form)
    def show
        @student = Student.find(params[:id])
    end

    #get to a html form - the same form as rendered in new, but with a different route for the post request (url is like student/1/edit)
    def edit
        @student = Student.find(params[:id])
    end

    #post that consumes the request from the page rendered in edit 
    def update
        @student = Student.find(params[:id])
        @student.update(student_params)
        redirect_to student_path(@student)
    end 

    private
    def student_params
        params.require(:student).permit(:id, :first_name, :last_name)
    end

end
