class SchoolClassesController < ApplicationController

    def index
        @school_classes = SchoolClass.all
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(school_class)
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
    end

    def update
        # must find the school_class first or will update all records
        school_class = SchoolClass.find(params[:id])
        school_class.update(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(school_class)
    end
    
end