class SchoolClassesController < ApplicationController
    def new
        @schoolclass = SchoolClass.new 
    end

    def create
        schoolclass = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
        if schoolclass.save
            redirect_to school_class_path(schoolclass)
        else
            redirect_to new_school_class_path
        end

    end

    def show
        @schoolclass = SchoolClass.find_by(id:params[:id])
    end

    def edit
        @schoolclass = SchoolClass.find_by(id:params[:id])
    end

    def update
        schoolclass = SchoolClass.find_by(id:params[:id])
        SchoolClass.update(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(schoolclass)
        
    end
end