class SchoolClassesController < ApplicationController
    def new

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

    end

    def edit

    end

    def update
        
    end
end