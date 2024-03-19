class ResultsController < ApplicationController
  def show
    @student_id = params[:student_id]
    @student = Student.find(@student_id)
    
    # Loop through the params to fetch the selected option names for each question
    @selected_options = {}
    params.each do |key, value|
      if key.start_with?('question_')
        question_id = key.split('_').last.to_i
        @selected_options[question_id] = value
      end
    end

    # Calculate the score
    @score = calculate_score(@selected_options)
  end

  private
  
  def calculate_score(selected_options)
    score = 0

    # Loop through each question and compare the selected option with the correct option
    (5..11).each do |question_number|
      selected_option_name = selected_options[question_number]
      correct_option_name = Option.find(question_number).send("option#{Option.find(question_number).correct_option}")

      if selected_option_name == correct_option_name
        score += 1
      end
    end

    score
  end
end
