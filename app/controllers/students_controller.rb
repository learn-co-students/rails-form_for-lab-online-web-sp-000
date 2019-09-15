class StudentsController < ApplicationController

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
  end

private
  def some_params(*args)
    params.require(:student).permit(*args)
  end
end
