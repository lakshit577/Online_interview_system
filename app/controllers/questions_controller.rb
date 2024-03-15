class QuestionsController < ApplicationController
  def index
    @questions = Question.all.includes(:options)
  end
  def submit_answers
    @questions = Question.find(params[:question_ids])
    total_marks = 0
    @questions.each do |question|
      correct_option = question.correct_option
      selected_option = params[:answers][question.id.to_s].to_i
      if selected_option == correct_option
        total_marks += 1
      end
    end
    render plain: "total marks #{total_marks}"
  end
end
