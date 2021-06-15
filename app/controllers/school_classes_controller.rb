class SchoolClassesController < ApplicationController
    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.new
        @school_class.update(params.require(:school_class).permit(:room_number, :title))
        redirect_to school_class_path(@school_class)
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
    end

    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(params.require(:school_class).permit(:room_number, :title))
        redirect_to school_class_path(@school_class)
    end
end