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
        @school_class = SchoolClass.new
        @school_class.title = params[:title]
        @school_class.room_number = params[:room_number]
        @school_class.save
        redirect_to school_class_url(@school_class)
      end
    
      def edit
        @school_class = SchoolClass.find(params[:id])
      end
    
      def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
        redirect_to school_class_path(@school_class)
        # raise params.inspect
        # ^ this line will cause the application to pause and print out params on an error page
      end
end