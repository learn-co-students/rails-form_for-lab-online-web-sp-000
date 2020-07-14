class SchoolClassesController < ApplicationController

	def create
		# binding.pry
	  @sc = SchoolClass.new
	  @sc.title = params[:school_class][:title]
	  @sc.room_number = params[:school_class][:room_number]
	  @sc.save
	  redirect_to school_class_path(@sc)
	end

	def show
		@sc = SchoolClass.find(params[:id])
	end

	def new
	end

	def edit
		@sc = SchoolClass.find(params[:id])
	end

	def update
		@sc = SchoolClass.find(params[:id])
	  @sc.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
	  redirect_to school_class_path(@sc)
	end

end
