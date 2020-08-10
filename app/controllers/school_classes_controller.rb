class SchoolClassesController < ApplicationController 

def show 
@school_class = SchoolClass.find(params[:id])  
end

 def new 
@school_class= SchoolClass.new 
end

    
def create
    @school_class = SchoolClass.new(classes_params[:title, :room_number])
    @class_params.save
    redirect_to school_class_path(@school_class)
end


def edit 
@shool_clsses=SchoolClass.find(params[:id])
end

def update
    @shool_clsses=SchoolClass.find(params[:id])
    @post.update(school_class_params)
    redirect_to school_class_path(@school_class)
end

private

def school_class_params
    params.require(:school_class).permit!
    end
end 
