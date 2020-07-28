class SchoolClassesController < ApplicationController
    def create
		@school_class = SchoolClass.create(post_params(:school_class, :title, :room_number))
		redirect_to school_class_path(@school_class)
    end

    def new
        @school_class = SchoolClass.new
        render 'form'
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
        render 'form' 
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def update
        @school_class = SchoolClass.update(post_params(:school_class, :title, :room_number))
        redirect_to school_class_path(@school_class)
    end
end