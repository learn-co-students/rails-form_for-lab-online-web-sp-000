class SchoolClassesController < ApplicationController
before_action :set_school_class, only: [:show, :update, :edit]

  def index
    @school_classes = SchoolClass.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end

end
