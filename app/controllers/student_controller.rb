class StudentsController < ApplicationController
    def index
        @students = Student.all
    end

    def new
        @post = Student.new
    end
end