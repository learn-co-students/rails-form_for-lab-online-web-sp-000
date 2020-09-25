class SchoolClassesController < ApplicationController
    def index
      @school_classes = SchoolClass.all
    end
    
    def new
      @school_class = SchoolClass.new
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def edit
      @school_class = SchoolClass.find(params[:id])
  end

  def create
      @school_class = SchoolClass.create!(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
      redirect_to school_class_path(@school_class)
    end

    def update
      @school_class = SchoolClass.find(params[:id])
      @school_class.update(school_class_params(:title, :room_number))
      redirect_to school_class_path(@school_class)
    end
     
    private

    # We pass the permitted fields in as *args;
    # this keeps `school_class_params` pretty dry while
    # still allowing slightly different behavior
    # depending on the controller action. This
    # should come after the other methods
     
    def school_class_params(*args)
      params.require(:school_class).permit(*args)
    end  
    
end