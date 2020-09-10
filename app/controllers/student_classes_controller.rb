class StudentClassesController < ApplicationController
    def index
        @student_classes = StudentClass.all
    end

    def show
        @student_class = StudentClass.find(params[:id])
    end
    
    def new
        @student_class = StudentClass.new
    end

    def create
        student_class = StudentClass.new(student_class_params(:title, :room_number))
        student_class.save

        redirect_to student_class_path(student_class)
    end

    def edit
        @student_class = StudentClass.find(params[:id])
    end

    def update
        student_class = StudentClass.find(params[:id])
        student_class.update(student_class_params(:title, :room_number))

        redirect_to student_class_path(student_class)
    end

    private

    def student_class_params (*args)
        params.require(:student_class).permit(*args)
    end
end
