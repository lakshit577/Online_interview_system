class StudentsController < ApplicationController
    def new
      @student = Student.new
    end
  
    def create
      @student = Student.new(student_params)
      if @student.save
        redirect_to root_path, notice: 'Student was successfully created.'
      else
        render :new
      end
    end
  

    private  
    def student_params
      params.require(:student).permit(:name, :age, :email, :fullname, :contact_number)
    end
  end
  