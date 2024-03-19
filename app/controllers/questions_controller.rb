class QuestionsController < ApplicationController
  def index
    @student = Student.find(params[:student_id]) if params[:student_id].present?
    @questions = Question.all.includes(:options)
  end
end



