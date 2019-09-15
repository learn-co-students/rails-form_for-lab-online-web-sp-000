class SchoolClassesController < ApplicationController

  def index
  end

  def new
  end

  def create
    
  end

  def edit
  end

  def update
  end

  def show

private
  def some_params(*args)
    params.require(:school_class).permit(*args)
  end
end
