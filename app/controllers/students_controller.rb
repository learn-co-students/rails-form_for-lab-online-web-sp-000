class StudentsController < ApplicationController
    #before_action :set_school_class, only: [:show, :edit, :update, :destroy]
  
    # GET /school_classes
    # GET /school_classes.json
    def index
      @school_classes = SchoolClass.all
    end
  
    # GET /school_classes/1
    # GET /school_classes/1.json
    def show
      @student = Student.find(params[:id])
    end
  
    # GET /school_classes/new
    def new
      @student = Student.new
      render :action => "new"
    end
  
    # GET /school_classes/1/edit
    def edit
      @student = Student.find(params[:id])
    end
  
    # POST /school_classes
    # POST /school_classes.json
    def create
      #binding.pry
      @student = Student.create(params.require(:student).permit(:first_name, :last_name))
      redirect_to student_path(@student)
    
    end
  
    # PATCH/PUT /school_classes/1
    # PATCH/PUT /school_classes/1.json
    def update
      @student = Student.find(params[:id])
      @student.update(params.require(:student).permit(:first_name, :last_name))
      redirect_to student_path(@student)
    end
  
    # DELETE /school_classes/1
    # DELETE /school_classes/1.json
    def destroy
      @student.destroy
      respond_to do |format|
        format.html { redirect_to school_classes_url, notice: 'School class was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
    def post_params(*args)
      params.require(:student).permit(*args)
    end
  end
  