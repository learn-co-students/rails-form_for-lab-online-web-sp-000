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
        @school_class = SchoolClass.new(school_params(:title, :room_number))
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def edit
        @school_class = school_class_finder
    end

    def update
        @school_class = school_class_finder
        @school_class.update(school_params(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end







    private

    def school_params(*args)
       params.require(:school_class).permit(*args)
    end

    def school_class_finder
        SchoolClass.find(params[:id])
    end

end
