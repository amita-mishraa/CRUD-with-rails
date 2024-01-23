require 'byebug'

class HomeController < ApplicationController
    def index 
       @student = Student.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def new
       @student= Student.new
    end
    
    def create
      byebug
      @student= Student.new(params[:id])
      if @student.save
        redirect_to  @student
      else
        render json: {error: @home.errors.full_messages}
      end
    end
    
    def edit 
      @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])

        if @student.update(student_params)
          redirect_to @student
        else
          render json: {error: @student.errors.full_messages}
        end
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy
    
        redirect_to root_path, status: :see_other
    end

    private
    def student_params
      params.require(:student).permit(:id)
    end
end
