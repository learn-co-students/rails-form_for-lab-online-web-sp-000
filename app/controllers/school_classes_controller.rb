class SchoolClassesController < ApplicationController
  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.new(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    @schoolclass.save
    redirect_to school_class_path(@schoolclass)
  end

  def show
    @schoolclass = SchoolClass.find(params[:id])
  end

  def index
    @schoolclasses = SchoolClass.all
  end

  def edit
    @schoolclass = SchoolClass.find(params[:id])
  end

  def update
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(title: params[:title], description: params[:description])
    redirect_to school_class_path(@schoolclass)
  end

end
