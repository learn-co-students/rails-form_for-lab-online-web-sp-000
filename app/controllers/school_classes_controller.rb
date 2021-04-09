require 'pry'
class SchoolClassesController < ApplicationController
    def index
        @school_classes = SchoolClass.all
      end
    
      def show
        @school_class = SchoolClass.find(params[:id])
      end
    
      def new
        @school_class = SchoolClass.new
      end
    
      def create
        #binding.pry
        @school_class = SchoolClass.new(post_params(:title, :room_number))
        @school_class.save
        redirect_to school_class_path(@school_class)
      end

      def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(post_params(:title, :room_number))
        redirect_to school_class_path(@school_class)
        # raise params.inspect
        # ^ this line will cause the application to pause and print out params on an error page
      end
    
      def edit
        @school_class = SchoolClass.find(params[:id])
      end

      private
      def post_params(*args)
        params.require(:school_class).permit(*args)
      end
end