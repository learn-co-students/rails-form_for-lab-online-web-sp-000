class SchoolClassesController < ApplicationController

    def show
        @schoolclass = SchoolClass.find(params[:id])
    end

    def new
        @schoolclass = SchoolClass.new
    end

    def create
        @schoolclass = SchoolClass.new(schoolclass_params)
        @schoolclass.save
        redirect_to school_class_path(@schoolclass)
    end

    def edit 
        @schoolclass = SchoolClass.find(params[:id])
    end

    def update
        @schoolclass = SchoolClass.find(params[:id])
        @schoolclass = SchoolClass.update(schoolclass_params)
        redirect_to school_class_path(@schoolclass)
    end

    private 

    def schoolclass_params
       params.require(:school_class).permit(:title, :room_number) 
    end

end