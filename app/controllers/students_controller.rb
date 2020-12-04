class StudentsController < ApplicationController
   def index
    @students = Student.all
   end

   def show
    @student = Student.find(params[:id])
   end
    
    
    def new
        @student =Student.new
    end

    def create
        # raise params.inspect
        # @student=Student.new({first_name: params[:student][:first_name], last_name: params[:student][:last_name]})
        @student=Student.new(params.require(:student).permit(:last_name, :first_name))
        @student.save
        redirect_to student_path(@student)
    end

    def edit
        @student=Student.find(params[:id])
    end

    def update
        @student=Student.find(params[:id])
        @student.update(params.require(:student).permit(:last_name, :first_name))
        redirect_to student_path(@student)
    end
end