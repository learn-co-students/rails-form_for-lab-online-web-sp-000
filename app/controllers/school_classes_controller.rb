class SchoolClassesController < ApplicationController

    def index
        @school_classes = SchoolClass.all 
    end
    
    def new
        @school_class = SchoolClass.new #First, set instance variable equal to a new Student.
    end

    def create
        @school_class = SchoolClass.new(school_class_params) #Set instance variable equal to new Student, takes in the argument of the user's inputs.
        @school_class.save #We save the object in our database.
        redirect_to school_class_path(@school_class) #Finally, take the user back to the main page to view object.
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
    end

    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(school_class_params)
        redirect_to school_class_path(@school_class)
    end

    private

    def school_class_params
        params.require(:school_class).permit!
    end

end