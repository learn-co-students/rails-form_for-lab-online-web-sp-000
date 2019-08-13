class SchoolClassesController < ApplicationController
  before_action :set_school_class, only: [:show, :edit, :update]
  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  private
    # def school_class_params(*args)
    #   params.require(:school_class).permit(*args)
    # end

    def set_school_class
      @school_class = SchoolClass.find(params[:id])
    end
end
