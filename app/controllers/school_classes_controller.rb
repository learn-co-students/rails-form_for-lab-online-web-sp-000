class SchoolClassesController < ApplicationController 

    def show
        @class = SchoolClass.find(params[:id]) 
    end
    
    def new 
        @class = SchoolClass.new 
    end

    def edit
        @class = SchoolClass.find(params[:id])
    end

    def create 
        @class = SchoolClass.new(school_class_params)
        @class.save
        redirect_to school_class_path(@class)
    end

    def update
       @class = SchoolClass.find(params[:id])
       @class.update(school_class_params)
       redirect_to school_class_path(@class) 
    end

    private 

    def school_class_params
        params.require(:school_class).permit!
    end

end