class SchoolClassesController < ApplicationController

    def new 
        @schoolclass = SchoolClass.new 
    end 

    def create
        @schoolclass = SchoolClass.new
        @schoolclass.title = params[:school_class][:title]
        @schoolclass.room_number = params[:school_class][:room_number]
        @schoolclass.save
        redirect_to school_class_path(@schoolclass)
    end 

    def show
        @schoolclass = SchoolClass.find(params[:id])
    end 

    def edit
        @schoolclass = SchoolClass.find(params[:id])
        redirect_to school_class_path(@schoolclass)
    end 


    private

    def schoolclass_params(*args)
        params.require(:schoolclass) .permit(*args)
    end 

end 