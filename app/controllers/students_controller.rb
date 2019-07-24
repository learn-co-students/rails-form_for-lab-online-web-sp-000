class StudentsController < ApplicationController

    def create
        @student = Student.new(student_params)
        @student.save
        redirect_to student_path(@student)
    end

    def edit
        set_variable_by_param_id
    end

    def new
        @student = Student.new
    end

    def show
        set_variable_by_param_id
    end

    def update
        set_variable_by_param_id
        @student.update(student_params)
        redirect_to student_path(@student)
    end

    private 

        def set_variable_by_param_id
            @student = Student.find(params[:id])
        end    
    
        def student_params(*args)
            params.require(:student).permit(:first_name, :last_name)
        end
end