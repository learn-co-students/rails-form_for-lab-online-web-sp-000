class SchoolClassesController < ApplicationController

    def index
        @school_class = SchoolClass.all
    end 

    def new
        @school_class = SchoolClass.new
    end 

    def show
        @school_class = SchoolClass.find(params[:id])
    end 

    def create
        @school_class = SchoolClass.new
        @school_class.first_name = params[:first_name]
        @school_class.last_name = params[:last_name]
        @school_class.save
        redirect_to school_class(@school_class)
    end 

    def edit
        @school_class = SchoolClass.find(params[:id])
    end 

    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(params.require(:schoolclass).permit(:first_name, :last_name))
        redirect_to schoolclass_path(@school_class)
    end 


end 