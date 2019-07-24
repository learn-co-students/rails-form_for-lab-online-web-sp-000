class SchoolClassesController < ApplicationController

    def create
        @school_class = SchoolClass.new(school_class_params)
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def edit
        set_variable_by_param_id
    end

    def new
        @school_class = SchoolClass.new
    end

    def show
        set_variable_by_param_id
    end

    def update
        set_variable_by_param_id
        @school_class.update(school_class_params)
        redirect_to school_class_path(@school_class)
    end

    private

        def school_class_params
            params.require(:school_class).permit(:title, :room_number)
        end

        def set_variable_by_param_id
            @school_class = SchoolClass.find(params[:id])
        end


end