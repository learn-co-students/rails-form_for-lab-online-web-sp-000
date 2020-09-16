class SchoolClassesController < ApplicationController
  
  def show
		@schoolclass = Schoolclass.find(params[:id])
	end

	def new
		@schoolclass = Schoolclass.new
	end

	def create
		@schoolclass = Schoolclass.new(schoolclass_params(:title, :room_number))
		@schoolclass.save
		redirect_to schoolclass_path(@schoolclass)
  end
  
end