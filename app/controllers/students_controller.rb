class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :edit, :update]
  
    def index
      @students = Student.all
    end
  
    def show
    end

    def new
      @student = Student.new
    end
  
    def edit
    end
  
    def create
      @student = Student.new(student_params)
  
      respond_to do |format|
        if @student.save
          format.html { redirect_to @student, notice: 'Student was successfully created.' }
          format.json { render :show, status: :created, location: @student }
        else
          format.html { render :new }
          format.json { render json: @student.errors, status: :unprocessable_entity }
        end
      end
    end
  

    def update
      respond_to do |format|
        if @student.update(student_params)
          format.html { redirect_to @student, notice: 'Student was successfully updated.' }
          format.json { render :show, status: :ok, location: @student }
        else
          format.html { render :edit }
          format.json { render json: @student.errors, status: :unprocessable_entity }
        end
      end
    end
  
    private
      def set_student
        @student = Student.find(params[:id])
      end
  
      def student_params
        params.require(:student).permit(:first_name, :last_name)
      end
  end
  