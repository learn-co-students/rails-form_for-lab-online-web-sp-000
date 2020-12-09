class SchoolClassesController < ApplicationController
    def new
    end
    def show
    end
    def create
    end
    def update
    end
    def edit
    end

    private

    def school_class_params
      params.require(:school_class).permit!
    end
end