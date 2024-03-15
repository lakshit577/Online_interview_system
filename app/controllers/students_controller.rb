class StudentsController < ApplicationController
    def new
      @student = Student.new
    end
  
    def create
      @student = Student.new(student_params)
      # debugger
      if @student.save
        redirect_to questions_path, notice: 'Student was successfully created.'
      else
        render :new
      end
    end
  

    private
    def student_params
      params.require(:student).permit(:name, :age, :email, :fullname, :contact_number)
    end
  end

