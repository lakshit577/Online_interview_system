class StudentsController < ApplicationController
    def new
      @student = Student.new
    end
  
    def create
      @student = Student.new(student_params)
      # debugger
      if @student.save
        redirect_to questions_path(student_id: @student.id)
      else
        render :new
      end
    end
  



    private
    def student_params
      params.require(:student).permit(:fullname, :email, :contact_number)
    end
  end
 